enum MetalDemo: String, CaseIterable, Identifiable, Hashable {
    case colors
    case polka
    
    var id: Self { self }
    
    var title: String {
        switch self {
        case .colors:  return "カラーエフェクト"
        case .polka:   return "水玉"
        }
    }
}
