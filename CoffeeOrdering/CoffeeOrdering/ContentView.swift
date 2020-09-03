//
//  ContentView.swift
//  CoffeeOrdering
//
//  Created by Sai Raghu Varma Kallepalli on 3/9/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var ordersVM: AllOdersViewModal
    @State var showAddView: Bool = false
    
    init() {
        ordersVM = AllOdersViewModal()
    }
    
    var body: some View {
      
        NavigationView {
            List {
                ForEach(self.ordersVM.orders, id: \.name) { order in

                    HStack {
                        Image(order.type)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(50)
                        
                        Text(order.name)
                            .font(.largeTitle)
                            .padding([.leading], 10)
                    }
                }
            }
            
            .navigationTitle("Coffee Orders")
            .navigationBarItems(trailing: Button("Add Order") {
                
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
