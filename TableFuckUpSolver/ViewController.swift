
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
        ) as! MyTableCell

        switch ( indexPath.item )
        {
            case 0:
                cell.myTextView.backgroundColor = UIColor.yellow
                cell.myTextView.text = "1st item"

            case 1:
                cell.myTextView.backgroundColor = UIColor.orange
                cell.myTextView.text = "2nd item"

            case 2:
                cell.myTextView.backgroundColor = UIColor.red

            case 3:
                cell.myTextView.backgroundColor = UIColor.blue

            default:
                cell.myTextView.backgroundColor = UIColor.green
        }

        return cell
    }
}
