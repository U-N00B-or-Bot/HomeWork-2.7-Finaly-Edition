//U-N00B-or-Bot

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    var info: Person!
    override func viewDidLoad() {
        super.viewDidLoad()

        infoLabel.text = "\(info.fullName)\nТел.: \(info.phone)\nЭлектронная почта: \(info.email)"
    }
    

}
