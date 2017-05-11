//
//  TargetBehaviorsViewController.swift
//  oyster
//
//  Created by Jasen Henderson on 5/11/17.
//  Copyright © 2017 Otter. All rights reserved.
//

var targetBehaviorArray : [String] = ["Swearing", "Arguing", "Work Refusal", "Out Of Seat", "Talking to Self", "Work Avoidance", "Bullying", "Talking Out Of Turn", "Off Task", "Sleeping", "Noises", "Tapping", "Clapping", "Clicking Pen", "Self Stem", "Biting", "Running", "Throwing", "Touching Others", "Personal Space", "Non-Compliance", "Cheating", "Lying", "Picking", "Manipulations", "Refusal", "Blurting", "Hair Pulling", "Farting", "Burping"]


var items = ["Blurt", "Running", "crying"]

import UIKit

class TargetBehaviorsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    var newBehaviorForPlan : [String] = []
    
    @IBOutlet weak var newBehaviorLabel: UILabel!
    
    
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    
    
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return targetBehaviorArray.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        
        
        cell.myLabel.text = targetBehaviorArray[indexPath.item]
        //cell.backgroundColor = UIColor.green // make cell more visible in our example project
        //cell.
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        
        newBehaviorForPlan.append("\(targetBehaviorArray[indexPath.item])")
        print(newBehaviorForPlan)
        newBehaviorLabel.text = "You added \(newBehaviorForPlan.last!) as a rep behavior to Timmy's Plan"
        
    }
}
