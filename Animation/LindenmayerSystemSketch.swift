
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
        // fill canvas with gradient colour
        
//        for colour in stride(from: 50, to: 0, by: 1) {
//            canvas.fillColor = Color(hue: 216, saturation: colour, brightness: 100, alpha: 100)
//            canvas.drawLine(from: Point(x:0, y:450+colour), to: Point(x:500, y:450+colour))
//        }
        
        // Enable faster rendering
        canvas.highPerformance = true
        

    
    // Load L system from JSON file
        var system1 = Visualizer(fromJSONFile: "nicole-cherry-blossom-tree", drawingOn: canvas)
        system1.length = 50
        system1.render()
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Nothing is being animated, so nothing needed here
        
    }
    
}
