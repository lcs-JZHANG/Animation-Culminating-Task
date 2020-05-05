//
//  PerlinWave.swift
//  Animation
//
//  Created by Russell Gordon on 2020-05-05.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

class PerlinWave {
    
    // MARK: Properties
    var c: Canvas
    let generator: PerlinGenerator
    var increment: Double
    var color: Color
    var verticalSpacePosition: Double

    // MARK: Initializer
    init(canvasToDrawUpon: Canvas, increment: Double = 0.001, color: Color = .black, verticalSpacePosition: Double = 0) {
        
        self.c = canvasToDrawUpon
        self.generator = PerlinGenerator()
        self.increment = increment
        self.color = color
        self.verticalSpacePosition = verticalSpacePosition
        
    }
    
    // MARK: Methods
    func update() {
        
        // Generate noise, a random value between 0 and 1, where each successive value is close to the prior value
        let naturalNoise = generator.perlinNoise(x: Double(c.frameCount) * increment, y: verticalSpacePosition)
        print(naturalNoise)
        
        // Map to a height relative to the screen
        let height = map(value: naturalNoise, fromLower: 0, fromUpper: 1, toLower: 0, toUpper: Double(c.height))
        
        // Draw a vertical line of this height
        c.lineColor = self.color
        c.drawLine(from: Point(x: c.frameCount, y: 0), to: Point(x: Double(c.frameCount), y: height))

    }
    
}
