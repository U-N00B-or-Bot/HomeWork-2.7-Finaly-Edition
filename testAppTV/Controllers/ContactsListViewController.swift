//U-N00B-or-Bot

import UIKit

class ContactsListViewController: UITableViewController {
    var persons:[Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        let contact = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        
        
        cell.contentConfiguration = content
        

        return cell
    }
    



    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           guard let detailsVC = segue.destination as? DetailsViewController else {return}
           guard let indexPath = tableView.indexPathForSelectedRow else {return}
           
        let info = persons[indexPath.row]
        
            detailsVC.info = info
       }
}

