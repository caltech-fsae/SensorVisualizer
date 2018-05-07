//
//  SensorDocument.swift
//  SensorVisualizer
//
//  Created by Vignesh Varadarajan on 5/6/18.
//  Copyright © 2018 Cyrush LLC. All rights reserved.
//

import Cocoa

class SensorDocument: NSDocument {
    var car: Car?

    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        let windowController = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "sensor-document-window")) as! NSWindowController
        self.addWindowController(windowController)
        windowController.document = self
    }

    override func windowControllerDidLoadNib(_ aController: NSWindowController) {
        
        super.windowControllerDidLoadNib(aController)
        // Add any code here that needs to be executed once the windowController has loaded the document's window.
    }

    override func data(ofType typeName: String) throws -> Data {
        guard let c = car, let serialized = try? c.serializedData() else {
            throw NSError(domain: NSOSStatusErrorDomain, code: NSFileWriteUnknownError, userInfo: nil)
        }

        return serialized
    }
    
    override func read(from data: Data, ofType typeName: String) throws {
        guard let deserialized = try? Car(serializedData: data) else {
            throw NSError(domain: NSOSStatusErrorDomain, code: NSFileReadCorruptFileError, userInfo: nil)
        }

        car = deserialized;
    }

}
