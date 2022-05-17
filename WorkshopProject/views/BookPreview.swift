//
//  BookPreview.swift
//  WorkshopProject
//
//  Created by Guillermo Saavedra Dorantes on 17/05/22.
//

import SwiftUI

struct BookPreview: View {
    
    @State var showCartView = false
    
    var body: some View {
        HStack {
            Spacer(minLength: 0)
            
            VStack {
                Spacer()
                Image("LOTR")
                    .resizable()
                    .frame(width: 180, height: 260)
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 5)
                Text("J.R.R. Tolkien")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding(.top)
                
                Text("The Fellowship of the ring")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("The Fellowship of the Ring is the first of three volumes in The Lord of the Rings, an epic set in the fictional world of Middle-earth. The Lord of the Rings is an entity named Sauron, the Dark Lord, ...")
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding()
                
                HStack {
                    BookDetailLabel(text: "Fantasy")
                    BookDetailLabel(text: "Action")
                    BookDetailLabel(text: "Novel")
                }
                
                Divider()
                    .padding()
                
                BuyButton(text: "Buy for $19.95")
                
                Spacer()
            }
            
            Spacer(minLength: 0)
        }.sheet(isPresented: $showCartView, content: {
            CartView(showModal: $showCartView)
        })
        .navigationTitle("Detail")
        .toolbar {
            Button("🛒") {
                self.showCartView = true
            }
        }
    }
}

struct BookPreview_Previews: PreviewProvider {
    static var previews: some View {
        BookPreview()
    }
}
