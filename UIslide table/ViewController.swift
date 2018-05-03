//
//  ViewController.swift
//  UIslide table
//
//  Created by D7703_23 on 2018. 5. 3..
//  Copyright © 2018년 D7703_23. All rights reserved.
//


import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    var i=0
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tb5.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        cell.textLabel?.text=String(i)
        i=i+1
        return cell
    }
    
    
    @IBOutlet weak var tb5: UITableView!
    @IBOutlet weak var mySlide: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tb5.dataSource=self
        tb5.delegate=self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderMove(_ sender: Any) {
        tb5.reloadData()
    }
    
    
}

        
        
  
    


