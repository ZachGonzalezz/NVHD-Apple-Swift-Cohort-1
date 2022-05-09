//
//  ViewController.swift
//  ClassProj
//
//  Created by DeVaunte Harris on 4/5/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    let months = ["Jan", "Feb", "March", "April", "May", "June", "July", "August", "Semptember", "October", "November", "December"]
    
 

        let days = [

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],

        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
         25, 26, 27, 28, 29, 30, 31],]
    
    func collectionView(_ collectionView: UICollectionView , numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        12
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = UIColor.systemPurple
        let label = UILabel(frame: CGRect (x: 0, y: 0, width: 100, height: 50))
        label.text = String(days[indexPath.section][indexPath.row])
        cell.contentView.addSubview(label)
        return cell
    }
    
    func convertNumToMonth(monthNum: Int) -> String {
        
        if(monthNum == 0){
            return "January"
        }
        if(monthNum == 1){
            return "Feburary"
        }
        if(monthNum == 2){
            return "March"
        }
        if(monthNum == 3){
            return "April"
        }
        if(monthNum == 4){
            return "May"
        }
        if(monthNum == 5){
            return "June"
        }
        if(monthNum == 6){
            return "July"
        }
        if(monthNum == 7){
            return "August"
        }
        if(monthNum == 8){
            return "Semptember"
        }
        if(monthNum == 9){
            return "October"
        }
        if monthNum == 10{
            return "November"
        }
        if monthNum == 11{
            return "December"
        }
        
        
        return "Error"
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            print(indexPath)
        
//        let dailyTaskScreen = DailyTaskScreen()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dailyTaskScreen = storyboard.instantiateViewController(withIdentifier: "DailyTask") as! DailyTaskScreen
        dailyTaskScreen.month = convertNumToMonth(monthNum: indexPath.section)
        dailyTaskScreen.day = String(indexPath.row + 1)
        
        
        
        
//        dailyTaskScreen.monthLabel.text = "Testing"
        
        
        
        navigationController?.pushViewController(dailyTaskScreen, animated: true)
        
        
    }

@IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate  = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

