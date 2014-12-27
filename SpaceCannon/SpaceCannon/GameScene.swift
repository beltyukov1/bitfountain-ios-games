//
//  GameScene.swift
//  SpaceCannon
//
//  Created by Alex Beltyukov on 12/26/14.
//  Copyright (c) 2014 Alex Beltyukov. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var mainLayer = SKNode()
    var cannon = SKSpriteNode(imageNamed: "Cannon")
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        // Add background
        let background = SKSpriteNode(imageNamed: "Starfield")
        background.position = CGPointZero
        background.anchorPoint = CGPointZero
        // Default blend mode is alpha; since we don't have transparency, replace is more efficient
        background.blendMode = SKBlendMode.Replace
        self.addChild(background)
        
        // Add main layer
        self.addChild(mainLayer)
        
        // Add cannon
        cannon.position = CGPoint(x: self.size.width * 0.5, y: 0.0)
        mainLayer.addChild(cannon)
        
        // Create cannon rotation actions
        var cannonAction = SKAction.sequence([SKAction.rotateByAngle(CGFloat(M_PI), duration: 2),
            SKAction.rotateByAngle(CGFloat(-M_PI), duration: 2)])
        cannon.runAction(SKAction.repeatActionForever(cannonAction))
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        for touch: AnyObject in touches {
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
