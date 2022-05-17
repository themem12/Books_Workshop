//
//  BooksList.swift
//  WorkshopProject
//
//  Created by Guillermo Saavedra Dorantes on 17/05/22.
//

import SwiftUI

struct BooksList: View {
    @State var isLinkActive = false
    
    var body: some View {
        HStack {
            NavigationLink(destination: BookPreview(), isActive: $isLinkActive) {
                /*Button(action: {
                    self.isLinkActive = true
                }) {
                    Text("LOTR")
                }*/
                BooksListView()
            }
        }
        .navigationTitle(Text("Books list"))
    }
}

struct BooksList_Previews: PreviewProvider {
    static var previews: some View {
        BooksList()
    }
}
