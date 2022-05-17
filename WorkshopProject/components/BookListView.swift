//
//  BookListView.swift
//  WorkshopProject
//
//  Created by Guillermo Saavedra Dorantes on 17/05/22.
//

import SwiftUI

private class BooksViewModel: ObservableObject {
    @Published var books: [Book] = Book.samples
}

struct BooksListView: View {
    @StateObject fileprivate var viewModel = BooksViewModel()
    
    var body: some View {
        List(viewModel.books) {
            book in
            BookRowView(book: book)
        }
    }
}
