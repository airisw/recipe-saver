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
            ScrollView {
                //            List(Recipe.all) { recipe in
                //                Text(recipe.name)
                //                    .navigationTitle("My Recipes")
                //            }
                RecipeList(recipes: Recipe.all)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
