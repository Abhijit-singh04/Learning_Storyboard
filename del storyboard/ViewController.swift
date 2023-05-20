import UIKit
import WebKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIScreenEdgePanGestureRecognizer for the left edge
        let leftEdgePanGesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handleEdgePanGesture(_:)))
        leftEdgePanGesture.edges = .left
        view.addGestureRecognizer(leftEdgePanGesture)
        
        // Create a UIScreenEdgePanGestureRecognizer for the right edge
        let rightEdgePanGesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handleEdgePanGesture(_:)))
        rightEdgePanGesture.edges = .right
        view.addGestureRecognizer(rightEdgePanGesture)
    }

    @objc func handleEdgePanGesture(_ gesture: UIScreenEdgePanGestureRecognizer) {
        if gesture.edges == .left {
            // Handle left edge gesture
            if gesture.state == .began {
                print("Left edge pan gesture started")
            } else if gesture.state == .changed {
                print("Left edge pan gesture changed")
            } else if gesture.state == .ended {
                print("Left edge pan gesture ended")
            }
        } else if gesture.edges == .right {
            // Handle right edge gesture
            if gesture.state == .began {
                print("Right edge pan gesture started")
            } else if gesture.state == .changed {
                print("Right edge pan gesture changed")
            } else if gesture.state == .ended {
                print("Right edge pan gesture ended")
            }
        }
    }
}
