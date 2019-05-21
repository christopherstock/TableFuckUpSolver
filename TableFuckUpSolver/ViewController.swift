
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
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "MyTableCell",
            for: indexPath
        )

        let myCell : MyTableCell = cell as! MyTableCell

        switch ( indexPath.item )
        {
            case 0:
                myCell.myTextView.backgroundColor = UIColor.yellow
                myCell.myTextView.text = "1st item"

            case 1:
                myCell.myTextView.backgroundColor = UIColor.orange
                myCell.myTextView.text = "2nd item"

            case 2:
                myCell.myTextView.backgroundColor = UIColor.red

            case 3:
                myCell.myTextView.backgroundColor = UIColor.blue

            default:
                myCell.myTextView.backgroundColor = UIColor.green
        }

        return cell
    }
}
