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
        var flowerSystem = LindenmayerSystem(axiom: "1[------ff+++++++FFFFFFFFFFFF-FFFFFFFFFFFF]1[++++++ff-------FFFFFFFFFFFF+FFFFFFFFFF]1[------fff+++++++FFFFFFFFFFFF-FFFFFFFFFFFF]1[++++++fff-------FFFFFFFFFFFF+FFFFFFFFFF]1FFFFFFFFFFFFFFFFFFFFFF1[+FFFFFFFFGFFFFFFFFFG]1[-FFFFFFFFFGFFFFFFFFG]1[--FFFFFFFFFFFGFFFFFFG]1[+FFFFFFFFFFFFFGFFFFFFFG]",
                                             
                                             rules: [
                                                
                                                
                                                "G": [
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFFFFF1[+FFFFFFFFFFFFFFFFFH]1[-FFFFFFFFFFFFFFFFFH]"),
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFFFFFH1[++FFFFFFFFFFFFFFFFFH]1[-FFFFFFFFFFFFFFFFFH]"),
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFFFFFF1[+FFFFFFFFFFFFFFFFFH]1[--FFFFFFFFFFFFFFFFFH]")
                                                ],
                                                
                                                
                                                "H": [
                                                    
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFFF1[+FFFFFFFFFFFFFFFFFI]1[-FFFFFFFFFFFDFFFFFFI]"),
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFFI1[++FFFFFFFFFFFFFDFFFFFFFI]1[-FFFFFFFFFFFFFFFFFI]"),
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFF1[+FFFFFFFFFFFFFFFFFI]1[--FFFFFFFFFFFFFDFFFFFFFI]")
                                                ],
                                                
                                                "I": [
                                                    
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFF1[+FFFFFFFFFFFFFFDFFFFFF]1[-FFFFFFFFFFFFFFDFFFFFF]"),
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFF1[++FFFFFFFFFFFFFFDFFFFFF]1[-FFFFFFFFFFFFFFFFF]"),
                                                    Successor(odds: 1, text: "1FFFFFFFFFFFFFFFFF1[+FFFFFFFFFFFFFFFFF]1[--FFFFFFFFFFFFFFDFFFFFF]")
                                                ],
                                                
                                                
                                                
                                                "D": [
                                                    Successor(odds: 1, text: "[C+++++C+++++C+++++C++++C]")
                                                ],
                                                
                                                "C":
                                                    [Successor(odds: 1, text: "0[++++F-F-F-F-F-F-F-F---F]0[----F+F+F+F+F+F+F+F+++F]3[FFFFB]"),
                                                     Successor(odds: 1, text: "2[++++F-F-F-F-F-F-F-F---F]2[----F+F+F+F+F+F+F+F+++F]3[FFFFB]")
                                                    ],
                                                
                                                
                                                
                                                
                                             ],
                                             generations: 5)
        
        // Visualize the system
        var visualizedFlower = Visualizer(for: flowerSystem,
                                          on: canvas,
                                          length: 30,
                                          reduction: 2.2,
                                          angle: 15,
                                          initialPosition: Point(x: 250, y: 100),
                                          initialHeading: 90,
                                          colors: [
                                            "0" : LSColor(hue: 343, saturation: 72, brightness: 86, alpha: 100),
                                            "1" : LSColor(hue: 29, saturation: 100, brightness: 29, alpha: 100),
                                            "2": LSColor(hue: 343, saturation: 38, brightness: 86, alpha: 100),
                                            "3": LSColor(hue: 38, saturation: 87, brightness: 100, alpha: 100)
                                          ])
        
        // Render the system
        visualizedFlower.render()
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Nothing is being animated, so nothing needed here
        
    }
    
}
