//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//        self.view = view
//
//        let firstCardView = CardView<CircleShape>(frame: CGRect(x: 0, y: 0, width: 120, height: 150), color: .red)
//        self.view.addSubview(firstCardView)
//        firstCardView.flipCompletionHandler = { card in card.superview?.bringSubviewToFront(card)}
//
//        let secondCardView = CardView<CircleShape>(frame: CGRect(x: 200, y: 0, width: 120, height: 150), color: .red)
//        self.view.addSubview(secondCardView)
//        secondCardView.isFlipped = true
//        secondCardView.flipCompletionHandler = { card in card.superview?.bringSubviewToFront(card)}
//    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print(self.responderChain())
//    }
}



//extension UIResponder {
//    func responderChain() -> String {
//        guard let next = next else {
//            return String(describing: Self.self)
//        }
//        return String(describing: Self.self) + "->" + next.responderChain()
//    }
//}





// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
