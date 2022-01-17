//U-N00B-or-Bot

import UIKit

class MainViewController: UITabBarController {
    let persons = Person.getPersonList()
        override func viewDidLoad() {
        super.viewDidLoad()
            changeViewControllers()

            }
    private func changeViewControllers() {
        guard let viewControllers = self.viewControllers else {return}
        for controller in viewControllers {
            if let navVC = controller as? UINavigationController{
                if let contactVC = navVC.topViewController as? ContactsListViewController {
                    contactVC.persons = persons
                }else if let secondContactVC = navVC.topViewController as? SecondContactsViewController {
                    secondContactVC.persons = persons
                }
            }
        }
        
    }
    
    
}
