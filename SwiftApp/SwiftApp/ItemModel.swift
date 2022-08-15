//
//  ItemModel.swift
//  SwiftApp
//
//  Created by Dani Raducu on 15.08.2022.
//

import Foundation

struct Item: Identifiable, Codable {
    var id = UUID()
    var description: String
    var price: String
    var deliver_to: String
    var imageUrl: String
    var status: String
}
