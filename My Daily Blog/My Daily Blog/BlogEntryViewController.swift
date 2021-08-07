//
//  BlogEntryViewController.swift
//  My Daily Blog
//
//  Created by Reese RJ Kaz on 8/5/21.
//

import UIKit

class BlogEntryViewController: UIViewController {
    
    @IBOutlet weak var blogEntryTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var entriesViewController: BlogEntriesTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        let blogEntry = BlogEntry()
        blogEntry.date = datePicker.date
        blogEntry.content = blogEntryTextView.text
         
        // Add entry tableviewer
        entriesViewController?.blogEntries.append(blogEntry);
        entriesViewController?.tableView.reloadData();
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
