
import UIKit

///
/// The UI ViewController for the View Controller.
///
class ViewController : UIViewController, UITableViewDataSource
{
    /// The UI reference to the UITableView.
    @IBOutlet weak var tableView: UITableView!
    /// The UI reference to the table header.
    @IBOutlet weak var tableHeader: UIView!

    ///
    /// Do any additional setup after loading the view, typically from a nib.
    ///
    override func viewDidLoad()
    {
        super.viewDidLoad()

        tableView.dataSource = self

        tableHeader.backgroundColor = UIColor.brown
    }

    ///
    /// Delivers the number of dynamic cells.
    ///
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let newCell = MyTableCell()
/*
        switch ( indexPath.item )
        {
            case 0:
                newCell.myContentView.backgroundColor = UIColor.yellow

            case 1:
                newCell.myContentView.backgroundColor = UIColor.orange

            case 2:
                newCell.myContentView.backgroundColor = UIColor.red

            case 3:
                newCell.myContentView.backgroundColor = UIColor.blue

            default:
                newCell.myContentView.backgroundColor = UIColor.green
        }
*/
        return newCell
    }
}
