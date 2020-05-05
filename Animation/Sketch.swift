import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Create two "Perlin waves"
    var waves: [PerlinWave] = []
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set up a Perlin wave
        waves.append(PerlinWave(canvasToDrawUpon: canvas,
                                increment: 0.001,
                                color: Color(hue: 240, saturation: 80, brightness: 90, alpha: 100),
                                verticalSpacePosition: 1))

        waves.append(PerlinWave(canvasToDrawUpon: canvas,
                                increment: 0.001,
                                color: Color(hue: 60, saturation: 80, brightness: 90, alpha: 100),
                                verticalSpacePosition: 2))

    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {

        // Draw this wave
        for wave in waves {
            wave.update()
        }
        
    }
        
}
