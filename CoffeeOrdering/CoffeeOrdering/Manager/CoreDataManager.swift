//
//  CoreDataManager.swift
//  CoffeeOrdering
//
//  Created by Sai Raghu Varma Kallepalli on 3/9/20.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static let instance = CoreDataManager(moc: NSManagedObjectContext.currentContect)
    var managedObjContext: NSManagedObjectContext
    
    private init(moc: NSManagedObjectContext) {
        managedObjContext = moc
    }
}

extension CoreDataManager {
    
    func fetchAllOrders() -> [Order] {
        var orders = [Order]()
        let orderFetchReq: NSFetchRequest<Order> = Order.fetchRequest()
        
        do {
            orders = try managedObjContext.fetch(orderFetchReq)
        } catch let error as NSError {
            print(error)
        }
        
        return orders
    }
    
    func saveOrder(name: String, type: String) {
        let order = Order(context: managedObjContext)
        order.name = name
        order.type = type
        
        do {
            try managedObjContext.save()
        } catch let error as NSError {
            print(error)
        }
    }
}
