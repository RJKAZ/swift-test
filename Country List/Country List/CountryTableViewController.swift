//
//  CountryTableViewController.swift
//  Country List
//
//  Created by Reese RJ Kaz on 7/28/21.
//

import UIKit

class CountryTableViewController: UITableViewController {
    
    let flags = getCountries();

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flags.count;
    }

    // what is each particular item
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)

        cell.textLabel?.text = flags[indexPath.row].flag + "-" + flags[indexPath.row].name;

        return cell;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCountry = flags[indexPath.row];
            
        performSegue(withIdentifier: "DefinitionSegue", sender: selectedCountry)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let defOfViewController = segue.destination as?
            CountryDefinitionViewController {
            
            if let selectedCountry = sender as? Country {
                defOfViewController.country = selectedCountry;
                
            }
        }
    }
}
