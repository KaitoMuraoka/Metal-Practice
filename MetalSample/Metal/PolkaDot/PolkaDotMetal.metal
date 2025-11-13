//
//  PolkaDotMetal.metal
//  MetalSample
//
//  Created by KaitoMuraoka on 2025/11/13.
//

#include <metal_stdlib>
using namespace metal;

[[stitchable]] half4 polkaDot(float2 position, half4 color,float4 boundingRect,float zoom){
    float2 isResolution = boundingRect.zw;
    float2 uv = position / isResolution;
    uv *= zoom;
    float2 uv2 = fract(uv); // fract の引数に値を入れると、xからx以下の最大の整数を引きた値を返してくれる
    bool circle = ((pow(uv2.x - 0.5, 2) + pow(uv2.y-0.5, 2) - pow(0.4, 2)) < 0.00);
    if (fmod((floor(uv.x) + floor(uv.y)), 2) == 0) {
        if (circle) {
            return half4(uv.x / zoom, 1, uv.y/zoom, 1);
        }
    }
    return half4(uv.y / zoom, 0, uv.x / zoom, 1);
}
