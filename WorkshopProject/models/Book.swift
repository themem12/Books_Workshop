//
//  Book.swift
//  WorkshopProject
//
//  Created by Guillermo Saavedra Dorantes on 17/05/22.
//

import Foundation

struct Book: Identifiable {
    var id = UUID()
    let author: String
    let title: String
    let cover: String
    let price: Double
}

// Tests
extension Book {
    static let samples = [
        Book(author: "J.R.R. Tolkien", title: "The Fellowship of the Ring", cover: "LOTR", price: 18.85)
    ]
}

