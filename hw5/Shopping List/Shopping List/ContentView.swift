//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable{
    let itemName: String
    let imageName: String
    let quantity: Int
    init(imageName: String, itemName: String, quantity: Int){
        self.itemName = itemName
        self.imageName = imageName
        self.quantity = quantity
    }
}

struct ContentView: View {
    
    var fruitList = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
    ]
    
    var diaryList = [
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)
    ]
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Fruits")) {
                    ForEach(fruitList) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            
           
                Section(header: Text("Diary")) {
                    ForEach(diaryList) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
           }.navigationTitle("Shopping List")
        }
    }
}
