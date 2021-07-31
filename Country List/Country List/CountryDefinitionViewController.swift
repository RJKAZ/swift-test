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
    
    var country = "🇨🇦";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bigFlagLabel.text = country;
        
        //let flags = ["🇦🇽", "🇦🇷", "🇨🇦", "🇧🇴", "🇮🇨", "🇰🇾"];
        
        if country == "🇦🇽"
        {
            countryDefinitionLabel.text = "Aland"
        }
        if country == "🇦🇷"
        {
            countryDefinitionLabel.text = "Argentina"
        }
        if country == "🇨🇦"
        {
            countryDefinitionLabel.text = "Canada"
        }
        if country == "🇧🇴"
        {
            countryDefinitionLabel.text = "Bolivia"
        }
        if country == "🇮🇨"
        {
            countryDefinitionLabel.text = "Canary Islands"
        }
        if country == "🇰🇾"
        {
            countryDefinitionLabel.text = "New Zealand"
        }
        
        
    }
}
