import UIKit

class BlogEntryViewController: UIViewController {
    
    @IBOutlet weak var blogEntryTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var blogEntry: BlogEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if blogEntry == nil {
            //create entry
        } else {
            //fill info
            blogEntryTextView.text = blogEntry!.content
            if let dateToBeDisplayed = blogEntry!.date {
                datePicker.date = dateToBeDisplayed            }
          
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        if blogEntry == nil {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
                
                let blogEntry = BlogEntry(context: context);
                blogEntry.date = datePicker.date
                blogEntry.content = blogEntryTextView.text
                
            }
        }
            
        
    (UIApplication.shared.delegate as? AppDelegate)?.saveContext();
        
    }
    @IBAction func onDelete(_ sender: Any) {
        if blogEntry != nil {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
                
                context.delete(blogEntry!)
                try? context.save()
            }
        }
        navigationController?.popViewController(animated: true)
}
}
