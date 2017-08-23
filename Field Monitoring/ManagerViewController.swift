//
//  ManagerViewController.swift
//  Field Monitoring
//
//  Created by R.M.K. Engineering College on 01/07/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import UIKit
import Alamofire

class ManagerViewController: UIViewController {

    @IBOutlet weak var secondView: UIView!
    @IBOutlet var taskTitle: UITextField!
    
    @IBOutlet var skills: UITextField!
    
    @IBOutlet var experience: UITextField!
    
    @IBOutlet var salary: UITextField!
    
    @IBOutlet var jobLocation: UITextField!
    
    @IBOutlet weak var latit: UILabel!
    
    @IBOutlet weak var longi: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        taskTitle.layer.cornerRadius = 15;
        skills.layer.cornerRadius = 15;
        experience.layer.cornerRadius = 15;
        salary.layer.cornerRadius = 15;
        jobLocation.layer.cornerRadius = 15;
        secondView.layer.cornerRadius = 20;
        buttonOutlet.layer.cornerRadius = 20;
        // Do any additional setup after loading the view.
        activityIndicator.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func assignJob(_ sender: Any) {
        
//        let jobTitleValue = taskTitle.text
//        let skillValue = skills.text
//        let experienceValue = experience.text
//        let salaryValue = salary.text
//        let jobLoc = jobLocation.text
//        let urlPath :String = "https://field-monitoring.herokuapp.com/users/"
//        let parametersValue = ["jobTitle" : jobTitleValue, "salary" : salaryValue, "experience" : experienceValue, "location" : jobLoc, "skills" : skillValue]
        
        self.performSegue(withIdentifier:"mapSegue", sender: self)
        
//        Alamofire.request(urlPath, method: .post, parameters: parametersValue, encoding: JSONEncoding.default, headers: [:])
//            .responseJSON { response in
//                guard response.result.isSuccess else {
//                    print("Error while fetching colors: \(String(describing: response.result.error))")
//                    return
//                }
//                guard let responseJSON = response.result.value as? [String: String],
//                let status = responseJSON["message"],
//                let latitiude = responseJSON["latitude"],
//                let longitude = responseJSON["longitude"] else { return }
//                
//                self.latit.text = latitiude
//                self.longi.text = longitude
//                
//                if (status == "success"){
//                    self.performSegue(withIdentifier:"mapSegue", sender: self)
//                }
//                
//        }
//        
//        
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let nextViewController = segue as! MapViewController
//        nextViewController.lat = latit.text!
//        nextViewController.long = longi.text!
//    }
    
    }
}
   

