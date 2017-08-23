//
//  JobsViewController.swift
//  Field Monitoring
//
//  Created by Ajith Panneerselvam on 23/08/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import UIKit

class JobsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var jobsList: Array<Any> = []
    var jobs = [Jobs]()
//    var jobTitleList: Array<Any> = []
//    var skillsList: Array<Any> = []
//    var experienceList: Array<Any> = []
//    var salaryList: Array<Any> = []
//    var locationList: Array<Any> = []
    var location: Array<Array<Double>> = []
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (jobsList.count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getData(){
        for job in jobsList{
//            print(job)
            let title : String = (job as AnyObject)["jobTitle"] as! String
            let experience : String = (job as AnyObject)["experience"] as! String
            let salary :  String = (job as AnyObject)["salary"] as! String
//            jobTitleList.append((job as AnyObject)["jobTitle"]!!)
//            skillsList.append((job as AnyObject)["skills"]!!)
//            experienceList.append((job as AnyObject)["experience"]!!)
    
            location = [(job as AnyObject)["location"]!! as! Array]
//            print(location[0][0],location[0][1])
            
            guard let jobVal = Jobs(title: title, experience:  experience,salary : salary) else {
                fatalError("Unable to instantiate meal1")
            }
            
            jobs += [jobVal]
        }
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? jobsTableViewCell  else {
            fatalError("The dequeued cell is not an instance of JobTableViewCell.")
        }
        
        let job = jobs[indexPath.row]
//        print(job.title)
        cell.titleVal.text = job.title
        cell.experienceVal.text = job.experience
        cell.salaryVal.text = job.salary
        return cell
    }
    
    
    
    

}
