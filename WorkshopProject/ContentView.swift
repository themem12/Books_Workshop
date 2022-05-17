//
//  ContentView.swift
//  WorkshopProject
//
//  Created by Guillermo Saavedra Dorantes on 11/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            BooksList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
