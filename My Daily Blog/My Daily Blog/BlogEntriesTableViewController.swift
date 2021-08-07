//
//  BlogEntriesTableViewController.swift
//  My Daily Blog
//
//  Created by Reese RJ Kaz on 8/6/21.
//

import UIKit

class BlogEntriesTableViewController: UITableViewController {
    
    var blogEntries: [BlogEntry] = []

    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blogEntries.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = UITableViewCell();
        
        let blogEntry = blogEntries[indexPath.row]
        
        row.textLabel?.text = blogEntry.content
        
        return row
   
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryViewController = segue.destination as? BlogEntryViewController {
            
            entryViewController.entriesViewController = self;
        }
    }

}
