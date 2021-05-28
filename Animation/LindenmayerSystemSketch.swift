
import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class LindenmayerSystemSketch: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Enable faster rendering
        canvas.highPerformance = true
        
        // Define the L system
        var system = LindenmayerSystem(axiom: "F+F+F+F+",
                                       rules: [
                                        "F": [
                                            Successor(odds: 1, text: "FFF+FF-FFF-FF+FFF")
                                        ]
                                       ],
                                       generations: 2)
        

    
    // Visualize
    var visualizedSystem = Visualizer(for: system,
                                      on: canvas,
                                      length: 90,
                                      reduction: 9,
                                      angle: 90,
                                      initialPosition: Point(x: 150, y: 100),
                                      initialHeading: 90)
        
        
        // Visualize
        var largerVisualizedSystem = Visualizer(for: system,
                                          on: canvas,
                                          length: 180,
                                          reduction: 9,
                                          angle: 90,
                                          initialPosition: Point(x: 300, y: 300),
                                          initialHeading: 90)
        
       // Render the system
        visualizedSystem.render()
        largerVisualizedSystem.render()
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Nothing is being animated, so nothing needed here
        
    }
    
}
