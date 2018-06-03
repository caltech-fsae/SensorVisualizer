//
//  SensorNode.swift
//  SensorVisualizer
//
//  Created by Vignesh Varadarajan on 5/6/18.
//  Copyright © 2018 Cyrush LLC. All rights reserved.
//

import Cocoa
import SceneKit

class ObstacleNode: SCNNode {
    var obstacle: Obstacle?

    init(obstacle: Obstacle) {
        super.init()

        self.obstacle = obstacle

        self.position = SCNVector3(obstacle.translation.x,
                                   obstacle.translation.y,
                                   obstacle.translation.z)



        let material = SCNMaterial()
        material.diffuse.contents = NSColor.systemRed
        self.geometry = SCNCone(topRadius: 0.0, bottomRadius: CGFloat(obstacle.size.radius),
                                height: CGFloat(obstacle.size.height))
        self.geometry!.materials = [material]
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
