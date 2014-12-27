//
//  GameScene.swift
//  SpriteKitDemo
//
//  Created by Alex Beltyukov on 12/23/14.
//  Copyright (c) 2014 Alex Beltyukov. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let background = SKSpriteNode(imageNamed: "Space")
        background.xScale = 2
        background.yScale = 2
        background.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(background)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let spaceship = SKSpriteNode(imageNamed: "Spaceship")
            spaceship.position = location

            let action = SKAction.moveBy(CGVector(dx: 0, dy: 200), duration: 1)
            spaceship.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(spaceship)
            
            let leftFlame = SKSpriteNode(imageNamed: "Flame")
            leftFlame.position = CGPoint(x: -12, y: -109)
            leftFlame.zPosition = 1
            
            let rightFlame = SKSpriteNode(imageNamed: "Flame")
            rightFlame.anchorPoint = CGPoint(x: 0.5, y: 1)
            rightFlame.position = CGPoint(x: 12, y: -87)
            rightFlame.zPosition = 1
            
            spaceship.addChild(leftFlame)
            spaceship.addChild(rightFlame)
            
            // Add square to spaceship node
//            let squareSprite = SKSpriteNode(color: UIColor.redColor(), size: CGSizeMake(100, 100))
//            squareSprite.zPosition = 1
//            sprite.addChild(squareSprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
