//
//  ViewController.swift
//  Notification
//
//  Created by Macbook Pro on 04/04/18.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   var notificationData:[SemiData] = []
    var profile: SemiData?
    @IBOutlet weak var notificationTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchProfileData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func fetchProfileData(){
        // SVProgressHUD.show(withStatus: "Loading")
        let header = ["Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM0OSwiaXNzIjoiaHR0cDpcL1wvMTM5LjU5LjU5Ljc4OjgwODBcL2FwaVwvbG9naW4iLCJpYXQiOjE1MjI3NTA2NzQsImV4cCI6MTYwOTE1MDY3NCwibmJmIjoxNTIyNzUwNjc0LCJqdGkiOiIyNDZjYjIxZjU0ZDIyOTM1NzNjNTIxZGQ2ZDU0ZTdmOCJ9.dwwgYmaJf-bNWxtKlGlv_BtcPnzjvauZFXZR0Q-bYmc", "Accept": "application/json", "Content-Type" :"application/json"]
        
        let url =  "http://139.59.59.78:8080/api/notifications?page=1"
        //let headers: HTTPHeaders = ["Authorization": "Bearer " + user.token]
        WebManager.requestHTTPWithBasicAuthorization(url: url, method: .get,header:header, finished: { (response) in
            self.didUserGetData(from: response)
        }, failed: { (error) in
            
        })
        
    }
    
    func didUserGetData(from response:[String:Any]) {
        let notificationBase = NotificationBase.init(dictionary: response as NSDictionary)
        if let data = notificationBase?.data?.semiData {
            notificationData = data
            notificationTableView.reloadData()
        }
    }

}
extension ViewController:UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows =  notificationData.count
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        cell.cellSetUp(notificationData[indexPath.row])
        return cell
        
    }
    
    
}
