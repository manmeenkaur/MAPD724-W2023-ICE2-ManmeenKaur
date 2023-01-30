//
//  GameViewController.swift
//  MAPD724-W2023-ICE1-ManmeenKaur
//
//  Created by Manmeen Kaur on 2023-01-22.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        if let scene = GKScene(fileNamed: "GameScene")
        {
            if let sceneNode = scene.rootNode as! GameScene?
            {
                sceneNode.scaleMode = .aspectFill
                
                // Present the scene
                if let view = self.view as! SKView?
                {
                    view.presentScene(sceneNode)
                    view.ignoresSiblingOrder = true
                }
            }
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
        return .portrait
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
