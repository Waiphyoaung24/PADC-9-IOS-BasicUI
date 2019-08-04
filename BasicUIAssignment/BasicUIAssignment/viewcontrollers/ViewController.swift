//
//  ViewController.swift
//  BasicUIAssignment
//
//  Created by Waiphyoag on 8/1/19.
//  Copyright © 2019 Waiphyoag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfDOB: UITextField!
    var selectedGender : Int = -1
    private var datepicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datepicker = UIDatePicker()
        datepicker?.datePickerMode = .date
        datepicker?.addTarget(self, action: #selector(selectDate(datepicker:)), for: .valueChanged)
        tfDOB.inputView=datepicker
        
    }
    
    @objc func selectDate(datepicker:UIDatePicker){
        let dateformat = DateFormatter()
        dateformat.dateFormat = "yyyy-MM-dd"
        tfDOB.text=dateformat.string(from: datepicker.date)
        view.endEditing(true)
    }
    
    
    @IBAction func scGender(_ sender: UISegmentedControl) {
        selectedGender = sender.selectedSegmentIndex
        
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: ProfileViewController.identifier) as! ProfileViewController
        vc.DOB = tfDOB.text ?? ""
        vc.selectedGenderIndex = selectedGender
        self.present(vc,animated: true,completion: nil)
        
    }
    
    
}

