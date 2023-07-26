//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by Airis Wang on 7/26/23.
//
//  favorites screen

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipes yet")
                .navigationTitle("Favorites")
        }
    }
}


struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
