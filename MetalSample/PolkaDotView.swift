//
//  PolkaDotView.swift
//  MetalSample
//
//  Created by KaitoMuraoka on 2025/10/26.
//

import SwiftUI

struct PolkaDotView: View {
    @State private var zoom: Float = 0
    var body: some View {
        Rectangle()
            .frame(width: 350,height: 350)
            .foregroundStyle(.blue)
            .colorEffect(
                ShaderLibrary.polkaDot(
                    .boundingRect,
                    .float(zoom)
                )
            )
        Slider(value: $zoom,in: 0...10)
    }
}

#Preview {
    PolkaDotView()
}
