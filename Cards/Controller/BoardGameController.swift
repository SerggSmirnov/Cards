//
//  BoardGameController.swift
//  Cards
//
//  Created by Сергей Смирнов on 23.09.2022.
//

import UIKit

class BoardGameController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var cardsPairsCounts = 8
    
    lazy var game: Game = getNewGame()
    
    private func getNewGame() -> Game {
        let game = Game()
        game.cardCount = self.cardsPairsCounts
        game.generateCards()
        return game
    }
    
// MARK: UI
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(startButtonView)
    }
    
    lazy var startButtonView = getStartButton()
    
    private func getStartButton() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.center.x = view.center.x
        let scenes = UIApplication.shared.connectedScenes
//        let window = UIApplication.shared.windows[0]
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        
        
        let topPadding = window!.safeAreaInsets.top
        button.frame.origin.y = topPadding
        
        button.setTitle("Start Game", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 10
        
        return button
    }
    
    
}


