//
//  SensorNode.swift
//  SensorVisualizer
//
//  Created by Vignesh Varadarajan on 5/6/18.
//  Copyright © 2018 Cyrush LLC. All rights reserved.
//

import Cocoa
import SceneKit

class SensorNode: SCNNode {
    var sensor: Sensor?

    init(sensor: Sensor) {
        super.init()

        self.sensor = sensor

        switch sensor.type {
        case .camera:
            self.geometry = SCNSphere(radius: 0.25)
            break
        case .radar:
            self.geometry = SCNCylinder(radius: 0.25, height: 0.25)
            break
        case .acceleration:
            return
        case .speed:
            return
        }

        self.position = SCNVector3(sensor.translation.x,
                                   sensor.translation.y,
                                   sensor.translation.z)

        let material = SCNMaterial()
        material.diffuse.contents = NSColor.systemRed

        self.geometry!.materials = [material]
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
