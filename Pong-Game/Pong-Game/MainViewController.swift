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
    }
    
    @IBAction func Player2(_ sender: Any) {
        alertStart(type: .player2)
    }
    
    @IBAction func Easy(_ sender: Any) {
        alertStart(type: .easy)
    }
    
    @IBAction func Normal(_ sender: Any) {
        alertStart(type: .normal)
    }
    
    @IBAction func Hard(_ sender: Any) {
        alertStart(type: .hard)
    }
    
    func alertStart(type: gameType){
        let alert = UIAlertController(title: "알림", message: "게임을 시작하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "아니오", style: .destructive))
        alert.addAction(UIAlertAction(title: "예", style: .default){
            (action) in self.moveToGame(game: type)
        })
        present(alert, animated: false, completion: nil)
    }
    
    func moveToGame(game: gameType){
        let gameVC = self.storyboard?.instantiateViewController(identifier: "game") as! GameViewController
        
        currentGameType = game
        
        self.navigationController?.pushViewController(gameVC, animated: true)
    }
}
