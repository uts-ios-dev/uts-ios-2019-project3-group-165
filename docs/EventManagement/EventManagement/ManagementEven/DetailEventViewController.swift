//
//  DetailEventViewController.swift
//  EventManagement
//
//  Created by Dongsheng Wan on 25/5/19.
//  Copyright © 2019 UTS. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {
    
    var event : Event?
    var timeEvent : String?
    var details: String?
    
    @IBOutlet var titleEvent: UITextField!
    @IBOutlet var time: UITextField!
    @IBOutlet var content: UITextView!
    @IBOutlet var Details: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleEvent.delegate = self as? UITextFieldDelegate
        time.delegate = self as? UITextFieldDelegate
        Details.delegate = self as? UITextFieldDelegate
        //Hold the value of TextField
        
        // Do any additional setup after loading the view.
        titleEvent.text = event?.eventName
        content.text = event?.eventContent
        Details.text = details
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Save(_ sender: UIButton) {
        content.text = "EventTitle:   \(titleEvent.text!) \n\nTime:    \(time.text!) \n\nDetails:   \(Details.text!)"
        // Click the button to show the value of textField in the textView.
        event?.eventName = titleEvent.text!
        timeEvent = time.text!
        event?.eventContent = content.text!
        details = Details.text!
        // return the event title, time, details just typed by yourself
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    // return value of textField.
}
