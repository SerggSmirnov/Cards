//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

protocol ShapeLayerProtocol: CAShapeLayer {
    init(size: CGSize, fillColor: CGColor)
}

extension ShapeLayerProtocol {
    init() {
        fatalError("init() cannot be used to create an instance")
    }
}


// Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()
