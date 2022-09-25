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
        view.addSubview(boardGameView)
    }
    
    lazy var startButtonView = getStartButton()
    
    lazy var boardGameView = getBoardGameView()
    
    private func getStartButton() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.center.x = view.center.x
        //        let window = UIApplication.shared.windows[0]
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let topPadding = window!.safeAreaInsets.top
        button.frame.origin.y = topPadding
        
        button.setTitle("Start Game", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 10
        
//        button.addTarget(nil, action: #selector(startGame), for: .touchUpInside)
        button.addAction(UIAction(title: "", handler: { action in print("Button was pressed")
        }), for: .touchUpInside)
        return button
    }
    
//    @objc func startGame(_ sender: UIButton) {
//        print("button was pressed")
//    }
    private func getBoardGameView() -> UIView {
        let margin: CGFloat = 10
        
        let boardView = UIView()
        boardView.frame.origin.x = margin
        
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let topPadding = window?.safeAreaInsets.top
        boardView.frame.origin.y = topPadding! + startButtonView.frame.height +
        margin
        
        boardView.frame.size.width = UIScreen.main.bounds.width - margin*2
        
        let bottomPadding = window?.safeAreaInsets.bottom
        
        boardView.frame.size.height = UIScreen.main.bounds.height - boardView.frame.origin.y - margin - bottomPadding!
        
        boardView.layer.cornerRadius = 5
        boardView.backgroundColor = UIColor(red: 0.1, green: 0.9, blue: 0.1, alpha: 0.3)
        
        return boardView
    }
}



