//
//  MainViewController.swift
//  Pong-Game
//
//  Created by 허예은 on 2020/09/23.
//

import Foundation
import UIKit

enum gameType{
    case easy
    case normal
    case hard
    case player2
}

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Player2(_ sender: Any) {
        moveToGame(game: .player2)
    }
    
    @IBAction func Easy(_ sender: Any) {
        moveToGame(game: .easy)
    }
    
    @IBAction func Normal(_ sender: Any) {
        moveToGame(game: .normal)
    }
    
    @IBAction func Hard(_ sender: Any) {
        moveToGame(game: .hard)
    }
    
    func moveToGame(game: gameType){
        let gameVC = self.storyboard?.instantiateViewController(identifier: "game") as! GameViewController
        
        currentGameType = game
        
        self.navigationController?.pushViewController(gameVC, animated: true)
    }
}
