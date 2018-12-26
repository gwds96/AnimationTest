import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rotateLable: UILabel!
    @IBOutlet weak var upLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 5) {
            self.rotateLable.transform = CGAffineTransform.init(translationX: 50, y: 150)
            self.upLable.transform = CGAffineTransform.init(translationX: 50, y: 0)
        }
    }
}

