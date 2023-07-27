//
//  RecipeList.swift
//  RecipeSaver
//
//  Created by Airis Wang on 7/27/23.
//
//  accepts recipe array as prop

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe] // prop
    
    var body: some View {
        VStack {
            // to align text to the left embed in HStack and add Spacer at the end
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
                Spacer()
            }
            
            // adds responsive vertical grid
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(recipes) { recipe in
                    RecipeCard(recipe: recipe)
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView { // adds scrollability
            RecipeList(recipes: Recipe.all)
        }
    }
}
