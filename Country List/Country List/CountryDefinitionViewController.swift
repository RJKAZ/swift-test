//
//  CountryDefinitionViewController.swift
//  Country List
//
//  Created by Reese RJ Kaz on 7/30/21.
//

import UIKit

class CountryDefinitionViewController: UIViewController {

    @IBOutlet weak var bigFlagLabel: UILabel!
    
    @IBOutlet weak var countryDefinitionLabel: UILabel!
    
    var country = "🇦🇽";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bigFlagLabel.text = country;

        
    }
}
