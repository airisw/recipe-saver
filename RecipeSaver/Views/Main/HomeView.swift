//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Airis Wang on 7/26/23.
//
//  home screen

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("My Recipes")
                .navigationTitle("My Recipes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
