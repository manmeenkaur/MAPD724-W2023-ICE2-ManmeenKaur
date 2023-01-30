//
//  Player.swift
//  MAPD724-W2023-ICE1-ManmeenKaur
//
//  Created by Manmeen Kaur on 2023-01-22.
//

import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zPosition = 2
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on the left boundary
        if(position.x <= -255)
        {
            position.x = -255
        }
        
        // constrain the player on the right boundary
        if(position.x >= 255)
        {
            position.x = 255
        }
    }
    
    override func Reset()
    {
        position.y = -495
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
