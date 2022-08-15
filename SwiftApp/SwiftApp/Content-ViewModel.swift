//
//  Content-ViewModel.swift
//  SwiftApp
//
//  Created by Dani Raducu on 15.08.2022.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func addItem () {
            
            let randomItems = [ Item(description: "Red Roses",
                                     price: "50",
                                     deliver_to: "Bianca",
                                     imageUrl: "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg",
                                     status: "new"),
                                Item(description: "Flower power",
                                                         price: "60",
                                                         deliver_to: "Cristina",
                                                         imageUrl: "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg",
                                                         status: "pending"),
                                Item(description: "Chrystantemum",
                                                         price: "120",
                                                         deliver_to: "Mihai",
                                                         imageUrl: "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg",
                                                         status: "delivered")]
            
        
        
            let randomItem = randomItems.randomElement()!
   
            withAnimation {
                itemList.insert(
                    randomItem, at: 0
                )
            }
        }
    }
}
