//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        setupViews()
    }
    
    private func setupViews() {
        self.view = getRootView()
        let redView = getRedView()
        let greenView = getGreenView()
        let whiteView = getWhiteView()
        
        setToCenter(view: greenView, toCenterOfView: redView)
        setToCenter(view: whiteView, toCenterOfView: redView)
        
        self.view.addSubview(redView)
        redView.addSubview(greenView)
        redView.addSubview(whiteView)
    }
    
    private func getRootView() -> UIView {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }
    
    private func getRedView() -> UIView {
        let viewFrame = CGRect(x: 50, y: 50, width: 200, height: 200)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .red
        view.clipsToBounds = true
        return view
    }
    
    private func getGreenView() -> UIView {
        let viewFrame = CGRect(x: 100, y: 100, width: 180, height: 180)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .green
        return view
    }
    
    private func getWhiteView() -> UIView {
        let viewFrame = CGRect(x: 0, y: 0, width: 50, height: 50)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .white
        return view
    }
    
    private func setToCenter(view moveView: UIView, toCenterOfView baseView: UIView) {
        let moveViewWidht = moveView.frame.width
        let moveViewHight = moveView.frame.height
        
        let baseViewWidht = baseView.frame.width
        let baseViewHight = baseView.frame.height
        
        let newXCoordinate = (baseViewWidht - moveViewWidht) / 2
        let newYCoordinate = (baseViewHight - moveViewHight) / 2
        
        moveView.frame.origin = CGPoint(x: newXCoordinate, y: newYCoordinate)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
