import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
  
    var middle: Point
    let speed: Int
    let radius: Int
    
  // The function
    override init() {
        
         // create the canvas
        canvas = Canvas (width: 300, height: 400)
        
        canvas.drawShapesWithFill = false
        
       middle = Point (x: 150, y: 200)
        speed = 4
       radius = 25
        
    }
   
    
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
       
    }
    
}
