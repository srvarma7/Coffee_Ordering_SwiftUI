//
//  AddOrderView.swift
//  CoffeeOrdering
//
//  Created by Sai Raghu Varma Kallepalli on 3/9/20.
//

import SwiftUI

struct AddOrderView: View {
    
    @State private var addOrderVM = AddOrderViewModal()
    @Binding var isPresented: Bool
    
    var body: some View {
        Group {
            VStack {
                TextField("Enter name", text: $addOrderVM.name)
                    .padding()
                
                Picker("Select coffee", selection: $addOrderVM.type, content: {
                    Text("Regular").tag("reg")
                    Text("Cappicino").tag("cap")
                    Text("Espresso").tag("esc")
                }).pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Button("Save", action: {
                    addOrderVM.saveOder()
                    self.isPresented.toggle()
                })
                .padding(10)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(10)
            }
        }.padding()
        
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(isPresented: .constant(true))
    }
}
