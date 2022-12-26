//
//  MainVC.swift
//  RaM
//
//  Created by Hakan Adanur on 26.12.2022.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainCell = UINib(nibName: "MainCell", bundle: nil)
        tableView.register(mainCell, forCellReuseIdentifier: "mainCell")
        
        title = "Locations"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
    }
    
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mainCell = tableView.dequeueReusableCell(withIdentifier: "mainCell") as! MainCell
        mainCell.selectionStyle = .none
        mainCell.configure()
        return mainCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
}

extension MainVC {
    static func create() -> MainVC {
        let vc = MainVC(nibName: "MainVC", bundle: nil)
        return vc
    }
}
