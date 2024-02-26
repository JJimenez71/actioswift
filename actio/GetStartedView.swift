//
//  GetStartedView.swift
//  actio
//
//  Created by Jordan Jimenez on 1/25/24.
//

import SwiftUI

struct GetStartedView: View {
    @State var started = false
    var body: some View {
        return Group{
            if started{
                QuestionsView()
            } else {
                GetStartedButton(started: $started)
            }
        }
    }
}

struct GetStartedButton: View {
    @Binding var started: Bool
    var body: some View{
        Button(action: {
            started = true
            print(started)
        }) {
            Text("Get Started")
        }
        .buttonStyle(ActioButtonTheme())
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
