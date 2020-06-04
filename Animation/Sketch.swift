import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
  
    var middle: point
    let speed: Int
    let radius: Int
    
  // The function
    override init() {
        
         // create the canvas
        canvas = Canvas (width: 300, height: 400)
        
        canvas.drawShapesWithFill = false
        
       middle = point (x: 150, y: 200)
        speed = (y: -4...4)
       radius = 25
        
    }
   
    
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Draw this wave
        for wave in waves {
            wave.update()
        }
        
        let height = Double.random(in:0...Double(canvas.height))
        print (height)
        
        
        //        //print the current frame
        //       print(canvas.frameCount)
        
        
        //       //draw a line
        //       let from = Point(x: canvas.frameCount, y:0)
        //     let to = Point(x: Double(canvas.frameCount), y: height)
        //     canvas.drawLine(from: from, to: to)
        
    }
    
}
