//
//  ViewController.swift
//  ExpendableMenu
//
//  Created by Marcel Hagmann on 03.04.18.
//  Copyright © 2018 Marcel Hagmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Expendable
    @IBOutlet weak var expendableMenuButton: MenuButton!
    
    var viewsToExpand: [UIView] = [] // rember that you can expand all subviews of UIView! :)
    
    @IBAction func expendableMenuButtonAction(_ sender: MenuButton) {
        expendableMenuButton.toggle(onView: self.view)
    }
    
    func createButtonsToExpand(numberOfButtons: Int) {
        if numberOfButtons != viewsToExpand.count {
            viewsToExpand.removeAll()
            
            for index in 0..<numberOfButtons {
                let button = UIButton()
                button.setTitle("\(index+1)", for: .normal)
                viewsToExpand.append(button)
            }
        }
    }
    
    
    // MARK: - demonstration settings
    @IBOutlet weak var descriptionLabel1: UILabel!
    @IBOutlet weak var descriptionLabel2: UILabel!
    @IBOutlet weak var descriptionLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expendableMenuButton.expandingDirection = .top
        
        createButtonsToExpand(numberOfButtons: 3)
        expendableMenuButton.layer.cornerRadius = expendableMenuButton.frame.width/2
        expendableMenuButton.expandingViewsMenu = viewsToExpand
    }
    
    @IBAction func numberOfExpendableButtonsAction(_ sender: UISlider) {
        let numberOfButtons = Int(sender.value)
        
        if !expendableMenuButton.isRunningAnimation {
            createButtonsToExpand(numberOfButtons: numberOfButtons)
            expendableMenuButton.expandingViewsMenu = viewsToExpand
        } else {
            print("Warning: \"expandingViewsMenu\" can only be replaced if the \".isRunningAnimation\" is not running!")
        }
        
        descriptionLabel1.text = "Number of expendable Buttons: \(numberOfButtons)"
    }
    
    @IBAction func startDegreeAction(_ sender: UISlider) {
        let degree = CGFloat(sender.value)
        expendableMenuButton.expandingDirection = .degree(degree)
        
        // NOTE: you can also use radian
        // expendableMenuButton.expandingDirection = .radian(<#T##CGFloat#>)
        
        descriptionLabel2.text = "Start Degree: \(Int(degree))"
    }
    
    @IBAction func startDegreeSegmentedAction(_ sender: UISegmentedControl) {
        var direction = ""
        switch sender.selectedSegmentIndex {
        case 0:
            expendableMenuButton.expandingDirection = .top
            direction = ".top"
        case 1:
            expendableMenuButton.expandingDirection = .right
            direction = ".right"
        case 2:
            expendableMenuButton.expandingDirection = .bottom
            direction = ".bottom"
        case 3:
            expendableMenuButton.expandingDirection = .left
            direction = ".left"
        default: break
        }
        
        descriptionLabel3.text = "Start Direction: \(direction)"
    }
}







