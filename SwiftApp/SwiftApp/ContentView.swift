//
//  ContentView.swift
//  SwiftApp
//
//  Created by Dani Raducu on 15.08.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
       
       var body: some View {
           VStack{
           Text("Hello, world!")
               .padding()
           List(vm.itemList) {item in
               HStack {
                   Text(item.description)
                   Spacer()
                   Text(item.price)
                   Spacer()
                   Text(item.status)
               }
           }
           .listStyle(.plain)
           .background(.thinMaterial)
           
           Button("Add item") {
               vm.addItem()
           }
               .padding()}
       }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
