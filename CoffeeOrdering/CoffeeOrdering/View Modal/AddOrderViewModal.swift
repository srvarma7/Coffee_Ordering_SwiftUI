//
//  AddOrderViewModal.swift
//  CoffeeOrdering
//
//  Created by Sai Raghu Varma Kallepalli on 3/9/20.
//

import Foundation
import SwiftUI

class AddOrderViewModal {
    
    var name = ""
    var type = ""
    
    func saveOder() {
        CoreDataManager.instance.saveOrder(name: name, type: type)
    }
}
