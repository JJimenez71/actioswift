//
//  ActioButtonTheme.swift
//  actio
//
//  Created by Jordan Jimenez on 2/8/24.
//

import SwiftUI

struct ActioButtonTheme: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.title3)
            .background(Color.orange)
            .foregroundStyle(Color.white)
            .clipShape(Capsule())
    }
}
