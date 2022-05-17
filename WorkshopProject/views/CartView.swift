//
//  CartView.swift
//  WorkshopProject
//
//  Created by Guillermo Saavedra Dorantes on 17/05/22.
//

import SwiftUI

struct CartView: View {
    @Binding var showModal: Bool
    @State var showingAlert = false
    @State var jiggling = false
    @State var jiggling_counter = 0
    
    init(showModal: Binding<Bool>) {
        self._showModal = showModal
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Image("LOTR")
                        .resizable()
                        .frame(width: 90, height: 120)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 10)
                        .padding(.init(top: 0, leading: 0, bottom: 12, trailing: 0))
                    VStack(alignment: .leading) {
                        Text("The fellowship of the Ring")
                        Text("$ 18.85")
                            .fontWeight(.bold)
                    }
                    BookDetailLabel(text: "1")
                }
                
                Divider().padding()
                
                CheckoutButton(text: "Checkout")
            }
            .navigationTitle("Your cart")
            .toolbar {
                Button("X") {
                    showModal = false
                }
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(showModal: .constant(false))
    }
}
