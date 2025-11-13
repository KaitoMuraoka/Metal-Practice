//
//  colors.swift
//  MetalSample
//
//  Created by KaitoMuraoka on 2025/10/26.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        Image(.tonfly2)
            .resizable()
            .scaledToFit()
            .colorEffect(ShaderLibrary.colors(.boundingRect))
    }
}

#Preview {
    ColorsView()
}
