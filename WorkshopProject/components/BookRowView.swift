//
//  BookRowView.swift
//  WorkshopProject
//
//  Created by Guillermo Saavedra Dorantes on 17/05/22.
//

import SwiftUI


struct BookRowView: View {
    var book: Book
    var body: some View {
        HStack(alignment: .top) {
            Image(book.cover)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                Text(book.author)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("$ \(book.price.roundToPlaces(places: 2))")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.init(top: 10, leading: 0, bottom: 0, trailing: 0))
            }
            Spacer()
        }
    }
}

struct BookRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookRowView(book: Book(author: "J.R.R. Tolkien", title: "The Fellowship of the Ring", cover: "cover", price: 18.85))
        }
    }
}

