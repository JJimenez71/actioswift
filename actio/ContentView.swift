//
//  ContentView.swift
//  actio
//
//  Created by Jordan Jimenez on 1/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Actio")
                .font(.title)
            GetStartedView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
