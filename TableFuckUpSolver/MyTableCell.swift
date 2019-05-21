
import Foundation
import UIKit

///
/// My custom table cell.
///
class MyTableCell : UITableViewCell
{
    /// The referenced TextView.
    @IBOutlet weak var myTextView: UITextView!

    func viewDidLoad()
    {
        print( ">> MyTableCell => viewDidLoad()" )
        print( self.myTextView )

/*
        myContentView = UIView()

        myContentView.backgroundColor = UIColor.orange
*/
    }
}
