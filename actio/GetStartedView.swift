//
//  GetStartedView.swift
//  actio
//
//  Created by Jordan Jimenez on 1/25/24.
//

import SwiftUI

struct GetStartedView: View {
    @State private var isStarted = false
    var body: some View {
        if isStarted{
            // Put our first view here
        } else{
            Button("Get Started"){
                self.isStarted = true
            }
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
