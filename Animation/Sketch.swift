import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Create a "Perlin wave"
    var wave: PerlinWave
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set up this Perlin wave
        wave = PerlinWave(canvasToDrawUpon: canvas, increment: 0.001, color: .black)
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {

        // Draw this wave
        wave.update()
        
    }
        
}
