//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by Airis Wang on 7/26/23.
//
//  categories screen

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            Text("Categories")
                .navigationTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
