import UIKit

protocol AddDelegate: class {
    func AddName(name: String)
}
class VCAdd: UIViewController {
    
    @IBOutlet weak var detailPV: UIPickerView!
    @IBOutlet weak var nameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        
    }
    
}
