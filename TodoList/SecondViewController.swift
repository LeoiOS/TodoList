//
//  SecondViewController.swift
//  TodoList
//
//  Created by Leo on 16/2/25.
//  Copyright © 2016年 Leo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addBtnClicked(sender: AnyObject) {
        self.view.endEditing(true)
        todoManager.addTask(nameField.text!, desc: descField.text!)
        nameField.text = ""
        descField.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
}

