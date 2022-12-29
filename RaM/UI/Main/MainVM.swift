//
//  MainVM.swift
//  RaM
//
//  Created by Hakan Adanur on 27.12.2022.
//

import Foundation

protocol MainVMDelegate {
    func fetchLocationsOnSuccess()
    func fetchLocationsOnError()
}

class MainVM {
    let service = WebService.shared
    var locations = [Location]()
    var delegate: MainVMDelegate?
    
    func fetchLocations() {
        service.downloadLocations { result in
            if let result = result {
                self.locations = result.results
                self.delegate?.fetchLocationsOnSuccess()
            } else {
                self.delegate?.fetchLocationsOnError()
            }
        }
    }
}
