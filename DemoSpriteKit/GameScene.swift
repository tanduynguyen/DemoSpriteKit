//
//  GameScene.swift
//  DemoSpriteKit
//
//  Created by Duy Nguyen on 21/9/16.
//  Copyright (c) 2016 ZwooMobile Pte. Ltd. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var node : SKSpriteNode!
    var mAnimatingFrames : [SKTexture]!
    
    override func didMoveToView(view: SKView) {
        
        self.view?.showsPhysics = false
//        let node = SKSpriteNode(imageNamed: "bird")
//        node.position = CGPoint(x: frame.width / 2, y: frame.height / 2)
        //        node.position = CGPointMake(0, 0)
//
//        addChild(node)
     
        mAnimatingFrames = Entity.initWithSpriteSheetNamed("Rabbit Run", sourceRect: CGRectMake(0, 0, 1600, 294), numberOfSprites: 6)
        
        node = SKSpriteNode(texture: mAnimatingFrames.first)
        node.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        node.size = CGSize(width: node.frame.width / 2, height: node.frame.height / 2)

        addChild(node)

        node.physicsBody = SKPhysicsBody(texture: node.texture!, size: node.size)
        if let physicsBody = node.physicsBody {
            physicsBody.dynamic = true
//            physicsBody.angularVelocity = 0.5
        }
        
        let line = SKSpriteNode(color: UIColor.yellowColor(), size: CGSizeMake(size.width, 20))
        line.position = CGPoint(x: size.width / 2, y: 10)
        
        addChild(line)
        
        line.physicsBody = SKPhysicsBody(rectangleOfSize: line.size)
        line.physicsBody?.dynamic = false
        
        walking()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
//            print(location)
            
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    func walking() {
        node.runAction( SKAction.repeatActionForever(SKAction.animateWithTextures(mAnimatingFrames, timePerFrame: 0.1, resize: false, restore: true)), withKey:"walkingInPlaceBear")
    }
}
