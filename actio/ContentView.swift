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
            HStack{
                ActioTitleView()
                    .padding()
                    .frame(alignment: .topLeading)
                Spacer()
            }
            GetStartedView().frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
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
