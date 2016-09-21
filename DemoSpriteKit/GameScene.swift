//
//  GameScene.swift
//  DemoSpriteKit
//
//  Created by Duy Nguyen on 21/9/16.
//  Copyright (c) 2016 ZwooMobile Pte. Ltd. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        
        let node = SKSpriteNode(imageNamed: "bird")
        node.position = CGPoint(x: frame.width / 2, y: frame.height / 2)
        //        node.position = CGPointMake(0, 0)
        node.size = CGSize(width: node.frame.width * 2, height: node.frame.height * 2)
        
        addChild(node)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            print(location)
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
