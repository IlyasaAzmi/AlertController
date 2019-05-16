//
//  ViewController.swift
//  AlertController
//
//  Created by Ilyasa Azmi on 16/05/19.
//  Copyright © 2019 Ilyasa Azmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func AlertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func ActionSheetButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
            print("User click Approve button")
        }))
        
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
            print("User click Edit button")
        }))
        
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
            print("User click Delete button")
        }))
        
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
            print("User click Dismiss button")
        }))
        
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }

    @IBAction func MoreTwoButtons(_ sender: UIButton) {
        let alert3 = UIAlertController(title: "Alert", message: "Alert with more than 2 buttons", preferredStyle: .alert)
        
        alert3.addAction(UIAlertAction(title: "Default", style: .default, handler: { (_) in
            print("You've pressed default")
        }))
        
        alert3.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in
            print("You've pressed cancel")
        }))
        
        alert3.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { (_) in
            print("You've pressed the destructive")
        }))
        self.present(alert3, animated: true, completion: nil)
    }
    
    @IBAction func DistractiveButton(_ sender: UIButton) {
        let alert2 = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: UIAlertController.Style.alert)
        
        alert2.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        alert2.addAction(UIAlertAction(title: "Sign out",
                                       style: UIAlertAction.Style.destructive,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert2, animated: true, completion: nil)
    }
    
    
    @IBAction func TextField(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
            if let txtField = alertController.textFields?.first, let text = txtField.text {
                // operations
                print("Text==>" + text)
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        alertController.addTextField { (textField) in
            textField.placeholder = "Tag"
        }
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

