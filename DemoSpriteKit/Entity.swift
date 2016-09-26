//
//  Entity.swift
//  DemoSpriteKit
//
//  Created by Duy Nguyen on 22/9/16.
//  Copyright © 2016 ZwooMobile Pte. Ltd. All rights reserved.
//

import SpriteKit

class Entity {

    class func initWithSpriteSheetNamed(spriteSheet: String, sourceRect: CGRect, numberOfSprites: Int) -> [SKTexture] {
        
        var mAnimatingFrames = [SKTexture]()
        let ssTexture = SKTexture(imageNamed: spriteSheet)
        ssTexture.filteringMode = .Nearest
        
        var sx = sourceRect.origin.x
        let sy = sourceRect.origin.y
        let sHeight = sourceRect.size.height
        let sWidth = sourceRect.size.width / CGFloat(numberOfSprites)

        for _ in 0..<numberOfSprites {
            let cutter = CGRectMake(sx, sy/ssTexture.size().width, sWidth/ssTexture.size().width, sHeight/ssTexture.size().height)
            let temp = SKTexture(rect: cutter, inTexture: ssTexture)
            mAnimatingFrames.append(temp)
            sx += sWidth / ssTexture.size().width
        }

        return mAnimatingFrames
    }

}
