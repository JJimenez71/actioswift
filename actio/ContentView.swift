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
            ActioTitleView()
            GetStartedView()
        }.frame(maxWidth: .infinity, maxHeight: .infinity) // Adding in background color
            .background{
                Color.gray.opacity(0.5).ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
