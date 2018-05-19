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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene(named: "art.scnassets/car.scn")!
        scnView.scene = scene
        scnView.allowsCameraControl = true
        scnView.showsStatistics = true
        scnView.backgroundColor = NSColor.black
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

    @IBAction func addSensor(sender: AnyObject) {
        
    }

    @IBAction func addRandomSensor(sender: AnyObject) {
        let sensor = generateRandomSensor()
        addSensorToCar(sensor: sensor)
    }

    func generateRandomSensor() -> Sensor {
        let translate = Sensor.Translate.with {
            $0.x = Double(arc4random() % 10)
            $0.y = Double(arc4random() % 5)
            $0.z = Double(arc4random() % 5)
        }

        let sensor = Sensor.with {
            $0.type = Sensor.SensorType.camera
            $0.translation = translate
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
}
