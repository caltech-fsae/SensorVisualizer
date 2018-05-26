//
//  GameViewController.swift
//  SensorVisualizer
//
//  Created by Vignesh Varadarajan on 5/6/18.
//  Copyright © 2018 Cyrush LLC. All rights reserved.
//

import SceneKit
import QuartzCore

class CarVisualizationViewController: NSViewController {
    var scnView: SCNView {
        get {
            return self.view as! SCNView
        }
    }

    var currentDoc: SensorDocument? {
        get {
            return self.view.window?.windowController?.document as? SensorDocument
        }
    }

    var sensors:[SensorNode] = []
    var coneArea: SCNNode?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene(named: "art.scnassets/car.scn")!
        scnView.scene = scene
        scnView.allowsCameraControl = true
        scnView.backgroundColor = NSColor.black

        let clickGesture = NSClickGestureRecognizer(target: self, action: #selector(handleClick(_:)))
        var gestureRecognizers = scnView.gestureRecognizers
        gestureRecognizers.insert(clickGesture, at: 0)

        let panGesture = NSPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        gestureRecognizers.insert(panGesture, at: 0)

        let longPressGesture = NSPressGestureRecognizer(target: self, action: #selector(handleLongPress(_:)))
        gestureRecognizers.insert(longPressGesture, at: 0)

        scnView.gestureRecognizers = gestureRecognizers
    }

    override func viewDidAppear() {
        guard let document = currentDoc else {
            return
        }

        if document.car == nil {
            document.car = Car()
            document.car!.sensors = []
        }

        for sensor in document.car!.sensors {
            addSensorToView(sensor: sensor)
        }
    }

    @IBAction func addRandomSensor(sender: AnyObject) {
        let sensor = generateRandomSensor()
        addSensorToCar(sensor: sensor)
    }

    func generateRandomSensor() -> Sensor {
        let translate = Sensor.Translate.with {
            $0.x = 5 * (drand48() - 0.5)
            $0.y = drand48()
            $0.z = 3  * (drand48() - 0.5)
        }

        let sensor = Sensor.with {
            $0.type = Sensor.SensorType.camera
            $0.translation = translate
            $0.cameraParams.fov = 60.0
            $0.cameraParams.focalLength = 5.0
            $0.cameraParams.imageSize.height = 1024
            $0.cameraParams.imageSize.width = 720
            $0.cameraParams.bitVal = 4
        }

        return sensor
    }

    func addSensorToCar(sensor: Sensor) {
        guard let document = currentDoc else {
            return
        }
        
        document.car!.sensors.append(sensor)
        addSensorToView(sensor: sensor)
    }

    func addSensorToView(sensor: Sensor) {
        let node = SensorNode(sensor: sensor)
        self.scnView.scene!.rootNode.addChildNode(node)
        sensors.append(node)
    }

//    func panCamera(translation: CGPoint) {
//        let cameraTransform = scnView.pointOfView?.transform
//        let length = pow(translation.x, 2) + pow(translation.y, 2)
//        let angle = atan(length/500.0)
//
//        let xNorm = translation.x / length;
//        let yNorm = translation.y / length;
//
//        let transMat = SCNMatrix4MakeRotation(angle, yNorm, 0, 0)
//        scnView.pointOfView?.transform = SCNMatrix4Mult(transMat, cameraTransform!)
//    }

    @objc
    func handlePan(_ gestureRecognizer: NSPanGestureRecognizer) -> Bool {
        // retrieve the SCNView
        let scnView = self.view as! SCNView

        let p = gestureRecognizer.location(in: scnView)

        let hitResults = scnView.hitTest(p, options: [:])
        // check that we clicked on at least one object
        guard hitResults.count > 0 else {
            return false
        }

        // retrieved the first clicked object
        let result = hitResults[0]
        let node = result.node

        guard let sensorNode = node as? SensorNode else {
            return false
        }

        let depth = scnView.projectPoint(sensorNode.position).z
        let position = scnView.unprojectPoint(SCNVector3(x: p.x, y: p.y, z: depth))
        sensorNode.position = position
        sensorNode.sensor!.translation.x = Double(position.x)
        sensorNode.sensor!.translation.y = Double(position.y)
        sensorNode.sensor!.translation.z = Double(position.z)

        currentDoc?.car?.sensors = []
        for node in sensors {
            currentDoc?.car?.sensors.append(node.sensor!)
        }

        return true
    }

    @objc
    func handleLongPress(_ gestureRecognizer: NSPressGestureRecognizer) {
        // check what nodes are clicked
        let p = gestureRecognizer.location(in: scnView)
        let hitResults = scnView.hitTest(p, options: [:])
        // check that we clicked on at least one object
        guard hitResults.count > 0 else {
            return
        }

        // retrieved the first clicked object
        let result = hitResults[0]
        let node = result.node

        guard let sensorNode = node as? SensorNode else {
            return
        }

        let material = sensorNode.geometry!.firstMaterial!

        if gestureRecognizer.state == .ended || gestureRecognizer.state == .cancelled ||
            gestureRecognizer.state == .changed {
            SCNTransaction.begin()
            SCNTransaction.completionBlock = {
                self.coneArea?.removeFromParentNode()
            }

            SCNTransaction.animationDuration = 0.5

            coneArea?.geometry?.firstMaterial?.diffuse.contents = NSColor.clear
            material.emission.contents = NSColor.black

            SCNTransaction.commit()
            return
        }

        // highlight it
        let fov = sensorNode.sensor?.cameraParams.fov

        let height = 30.0

        // Convert the fov to radians, and divide by two, before taking the tangent, since we are interested
        // in the triangle that is defined by the height and side of the cone.
        coneArea = SCNNode(geometry: SCNCone(topRadius: 0, bottomRadius: CGFloat(height * tan(fov! * Double.pi / 180.0)), height: CGFloat(height)))
        coneArea?.eulerAngles = SCNVector3Make(CGFloat(Double.pi / 2), 0, 0)
        coneArea?.position = SCNVector3Make(0, 0, CGFloat(-height / 2))
        let coneMaterial = SCNMaterial()
        coneMaterial.diffuse.contents = NSColor.green.withAlphaComponent(0.0)
        coneArea!.geometry!.materials = [coneMaterial]
        
        sensorNode.addChildNode(coneArea!)

        SCNTransaction.begin()
        SCNTransaction.animationDuration = 0.5

        coneMaterial.diffuse.contents = NSColor.green.withAlphaComponent(0.5)
        material.emission.contents = NSColor.green

        SCNTransaction.commit()
    }

    @objc
    func handleClick(_ gestureRecognizer: NSGestureRecognizer) {
        // retrieve the SCNView
        let scnView = self.view as! SCNView

        // check what nodes are clicked
        let p = gestureRecognizer.location(in: scnView)
        let hitResults = scnView.hitTest(p, options: [:])
        // check that we clicked on at least one object
        guard hitResults.count > 0 else {
            return
        }

        // retrieved the first clicked object
        let result = hitResults[0]
        let node = result.node

        guard let sensorNode = node as? SensorNode else {
            return
        }

        let material = sensorNode.geometry!.firstMaterial!

        // highlight it
        SCNTransaction.begin()
        SCNTransaction.animationDuration = 0.5

        // on completion - unhighlight
        SCNTransaction.completionBlock = {
            SCNTransaction.begin()
            SCNTransaction.animationDuration = 0.5

            material.emission.contents = NSColor.black

            SCNTransaction.commit()
        }

        material.emission.contents = NSColor.blue

        SCNTransaction.commit()
    }
}
