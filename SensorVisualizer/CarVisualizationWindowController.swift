//
//  CarVisualizationWindowController.swift
//  SensorVisualizer
//
//  Created by Vignesh Varadarajan on 5/6/18.
//  Copyright © 2018 Cyrush LLC. All rights reserved.
//

import Cocoa

class CarVisualizationWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        if let window = window, let screen = window.screen {
            let screenRect = screen.visibleFrame
            window.setFrameOrigin(NSPoint(x: 100, y: screenRect.maxY - window.frame.height - 100))
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        shouldCascadeWindows = true
    }

}
