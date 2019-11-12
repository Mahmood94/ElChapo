//
//  HomeViewController.swift
//  ElChapo
//
//  Created by Mahmood Al-haddad on 11/12/19.
//  Copyright © 2019 Mahmood Al-haddad. All rights reserved.
//

import UIKit

class HomeViewController: ABCViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoTableViewCell", for: indexPath)
        
        return cell
    }
    
}
