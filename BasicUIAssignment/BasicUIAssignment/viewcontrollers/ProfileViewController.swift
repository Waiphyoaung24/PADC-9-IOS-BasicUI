//
//  ProfileViewController.swift
//  BasicUIAssignment
//
//  Created by Waiphyoag on 8/1/19.
//  Copyright © 2019 Waiphyoag. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    static let identifier = "ProfileViewController"
    @IBOutlet weak var lblDOB: UILabel!
    
    @IBOutlet weak var lblGender: UILabel!
    
    var DOB : String = ""
    var selectedGenderIndex : Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDOB.text=DOB
        
        switch selectedGenderIndex
        {
        case 0 :
            lblGender.text = "Male"
            break
        case 1 :
            lblGender.text = "Female"
            break
        default:
            break
            
        }
        

    }
    

    

}
