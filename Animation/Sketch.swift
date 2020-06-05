import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    
    let canvas : Canvas
    
      // position
        var x : Int
        var x1 : Int
        
        let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
        let blue = Color(hue: 240, saturation: 100, brightness: 100, alpha: 100)
        let green = Color(hue: 100, saturation: 100, brightness: 100, alpha: 100)
        let orange = Color(hue: 35, saturation: 100, brightness: 100, alpha: 100)
        let purple = Color(hue: 280, saturation: 70, brightness: 60, alpha: 100)
        
        var drawShapesWithBorders = false
        
        // The function
        override init() {
            
            // Position
            canvas = Canvas(width: 500, height: 500)
            
            // Set starting position
            x = 250
            x1 = 250
            
        }
        
        // Making it to repeat
        func draw() {
            
            canvas.drawShapesWithBorders = false
            
            //three circles going down
            for n in 0...2{
                
                x += 1
                
                // color
                if n == 0{
                    canvas.fillColor = black
                } else if n == 1{
                    canvas.fillColor = blue
                } else if n == 2{
                    canvas.fillColor = purple
                }
                
                // draw ellipse
                canvas.drawEllipse(at: Point(x: 83 + 166 * n, y: x), width: 50, height: 50)
                
            }
            
            
                      //three circles going down
                      for n in 0...2{
                          
                          x += 1
                          
                          // color
                          if n == 0{
                              canvas.fillColor = orange
                          } else if n == 1{
                              canvas.fillColor = black
                          } else if n == 2{
                              canvas.fillColor = green
                          }
                          
                          // draw ellipse
                          canvas.drawEllipse(at: Point(x: 60 + 100 * n, y: x), width: 50, height: 50)
            
            
            // go up
            for n in 0...1{
                
                x1 -= 1
                
                //colors of it
                if n == 0{
                    canvas.fillColor = blue
                } else if n == 1{
                    canvas.fillColor = orange
                }
                
                // Draw ellipse
                canvas.drawEllipse(at: Point(x: 166 + 166 * n, y: x1), width: 50, height: 50)
                
            }
            
            // go up
                for n in 0...1{
                    
                    x1 -= 1
                    
                    //colors of it
                    if n == 0{
                        canvas.fillColor = purple
                    } else if n == 1{
                        canvas.fillColor = green
                    }
                    
                    // Draw ellipse
                    canvas.drawEllipse(at: Point(x: 100 + 150 * n, y: x1), width: 50, height: 50)
                    
                }
            
        }
        
    }

    
}
