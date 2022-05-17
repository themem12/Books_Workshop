//
//  CheckoutButton.swift
//  WorkshopProject
//
//  Created by Guillermo Saavedra Dorantes on 17/05/22.
//

import SwiftUI

struct CheckoutButton: View {
    var text: String
    @State private var showingAlert = false
    
    var body: some View {
        Button {
            showingAlert = true
        } label: {
            Text(text)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.caption2)
                .padding(.init(top: 12, leading: 40, bottom: 12, trailing: 40))
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("Purchase complete"),
                message: Text("Thank you for your purchase."),
                dismissButton: .default(Text("OK"))
            )
        }
        .background(RoundedRectangle(cornerRadius: 20)
        .fill(.yellow))
    }
}

struct CheckoutButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CheckoutButton(text: "Test")
        }
    }
}

