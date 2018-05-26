//
//  NewSensorViewController.swift
//  SensorVisualizer
//
//  Created by Vignesh Varadarajan on 5/26/18.
//  Copyright © 2018 Cyrush LLC. All rights reserved.
//

import Cocoa

class NewSensorViewController: NSViewController {
    @IBOutlet var sensorTypeButton: NSPopUpButton!
    let sensors = [
        "Camera": Sensor.SensorType.camera,
        "Radar": Sensor.SensorType.radar
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        for sensorTitle in sensors.keys {
            sensorTypeButton.addItem(withTitle: sensorTitle)
        }
    }
    
}
