//
//  AddTooView.swift
//  Tu Todo
//
//  Created by Ahmed El Gndy on 29/12/2024.
//

import SwiftUI

struct AddTooView: View {
    //MARK: PROPERTIES
    @State private var name : String = " "
    @State private var priority : String = "Normal"
    @Environment(\.isPresented) var isPresented
    
    let priorities = ["Low" , "Normal" , "Hight"]
    //MARK: BODY
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    //MARK: todo name
                    TextField("Todo", text: $name)
                    TextField(text: $name) {
                        Text("jo")
                    }
                        
                    //MARK: Picker
                    Picker("Piroity" , selection: $priority) {
                        ForEach(priorities ,id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Button(action: {
                        print("hi")
                    }, label: {
                        Text("save")
                    })//: Save Button
                    //save
                    Spacer()
                }//: Form
            }//: vstack
            .navigationBarTitle("add todo", displayMode: .inline)
            .navigationBarItems(
                trailing:
                Button(action: {
                    dismiss.callAsFunction()

                }, label: {
                Image(systemName: "xmark")
            })
            )
            
        }//:NavigationView
    }
}

#Preview {
    AddTooView()
}
