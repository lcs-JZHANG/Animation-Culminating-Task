import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    let generator = PerlinGenerator()
    
    var increment: Double
        
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // How much of a jump through Perlin noise space to make with each frame
        increment = 0.001
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {

        // Generate noise, a random value between 0 and 1, where each successive value is close to the prior value
        let naturalNoise = generator.perlinNoise(x: Double(canvas.frameCount) * increment)
        print(naturalNoise)
        
        // Map to a height relative to the screen
        let height = map(value: naturalNoise, fromLower: 0, fromUpper: 1, toLower: 0, toUpper: Double(canvas.height))
        
        // Draw a vertical line of this height
        canvas.drawLine(from: Point(x: canvas.frameCount, y: 0), to: Point(x: Double(canvas.frameCount), y: height))
        
    }
    
}
