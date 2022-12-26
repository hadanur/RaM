//
//  MainCell.swift
//  RaM
//
//  Created by Hakan Adanur on 26.12.2022.
//

import UIKit

class MainCell: UITableViewCell {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var locationName: UILabel!
    @IBOutlet weak var locationDimension: UILabel!
    @IBOutlet weak var locationType: UILabel!
    
    
    func configure() {
        mainView.layer.cornerRadius = 8
    }
}
