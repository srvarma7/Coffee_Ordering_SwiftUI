//
//  NSManagedObjectContext+Extension.swift
//  CoffeeOrdering
//
//  Created by Sai Raghu Varma Kallepalli on 3/9/20.
//

import Foundation
import CoreData
import UIKit

extension NSManagedObjectContext {
    static var currentContect: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
