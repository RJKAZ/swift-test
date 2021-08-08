import UIKit

class BlogEntryViewController: UIViewController {
    
    @IBOutlet weak var blogEntryTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            let blogEntry = BlogEntry(context: context);
            blogEntry.date = datePicker.date
            blogEntry.content = blogEntryTextView.text
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            
        }
    }
}
