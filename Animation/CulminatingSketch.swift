//
//  CulminatingSketch.swift
//  Animation
//
//  Created by Liu, Bojun on 2021-05-30.
//

import Foundation
import CanvasGraphics


// NOTE: This is a completely empty sketch; it can be used as a template.
class CulminatingSketch: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Enable faster rendering
        canvas.highPerformance = true
        
        // Create the basic L-system
        var flowerSystem = LindenmayerSystem(axiom: "D",
                                             rules: [
                        
                                                
                                                "D": [Successor(odds: 1, text: "[C+++++C+++++C+++++C++++C]")],
                                                
                                                "C": [Successor(odds: 1, text: "0[++++F-F-F-F-F-F-F-F---F]1[----F+F+F+F+F+F+F+F+++F]2[FFFFB]")],

                                                
                                             ],
                                             generations: 2)
        
        // Visualize the system
        var visualizedFlower = Visualizer(for: flowerSystem,
                                          on: canvas,
                                          length: 30,
                                          reduction: 2,
                                          angle: 15,
                                          initialPosition: Point(x: 250, y: 250),
                                          initialHeading: 0,
                                          colors: [
                                            "0" : LSColor(hue: 113, saturation: 100, brightness: 40, alpha: 100),
                                            "1" : LSColor.blue,
                                            "2": LSColor.orange,
                                            "3": LSColor(hue: 343, saturation: 38, brightness: 86, alpha: 100)
                                          ])
        
        // Render the system
        visualizedFlower.render()
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Nothing is being animated, so nothing needed here
        
    }
    
}
