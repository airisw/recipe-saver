//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by Airis Wang on 7/26/23.
//
// new recipes screen

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
    }
}


struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
