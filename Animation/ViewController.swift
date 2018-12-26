import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rotateLable: UILabel!
    @IBOutlet weak var upLable: UILabel!
    
    let Friends = ["Nguyễn Văn Sơn","Phạm Văn Thiện","Nguyễn Tuấn Minh"]
    let Location = ["Bắc Ninh","Nam Định","Hải Phòng","Phú Thọ"]
    let Language = ["Java","Swift","C++"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 5) {
            self.rotateLable.transform = CGAffineTransform.init(translationX: 50, y: 150)
            self.upLable.transform = CGAffineTransform.init(translationX: 50, y: 0)
        }
    }
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        let db = UIStoryboard(name: "Main", bundle: nil)
        let screen = db.instantiateViewController(withIdentifier: "addscreen") as! VCAdd
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return Friends.count
        }else if section == 1 {
            return Location.count
        }else {
            return Language.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if indexPath.section == 0 {
            let name = Friends[indexPath.row]
            cell.textLabel?.text = name
        }else if indexPath.section == 1 {
            let name = Location[indexPath.row]
            cell.textLabel?.text = name
        }else {
            let name = Language[indexPath.row]
            cell.textLabel?.text = name
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Friends"
        }else if section == 1 {
            return "Location"
        }else {
            return "Language"
        }
    }
}
