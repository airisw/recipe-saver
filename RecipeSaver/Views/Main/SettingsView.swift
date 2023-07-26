//
//  SettingsView.swift
//  RecipeSaver
//
//  Created by Airis Wang on 7/26/23.
//
//  settings screen

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
