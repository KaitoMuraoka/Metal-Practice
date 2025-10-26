//
//  Metals.metal
//  MetalSample
//
//  Created by KaitoMuraoka on 2025/10/26.
//

#include <metal_stdlib>
using namespace metal;

[[stitchable]] half4 colors(float2 position, half4 color, float4 rect) {
    //return half4(1, 0, 0, 1); // RGBA
    //return color.rrra;
    //return half4(1-color.rgb, 1);
    
    float2 uv = position / rect.zw; // 正規化
    if (uv.y < 0.5) {
        return half4(1 - color.rgb, 1);
    } else {
        return color;
    }
}
