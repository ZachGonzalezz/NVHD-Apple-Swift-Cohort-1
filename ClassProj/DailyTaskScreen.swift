//
//  DailyTaskScreen.swift
//  ClassProj
//
//  Created by Owen Davis on 4/26/22.
//

import UIKit

class DailyTaskScreen: UIViewController{
    
    var month = ""
    var day = ""
    var tasks = [String]() 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =    UIColor.white
        monthLabel.text = month
        dayLabel.text = day
        
    }
    
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
}
