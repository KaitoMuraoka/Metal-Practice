import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List(MetalDemo.allCases) { demo in
                NavigationLink(demo.title, value: demo)
            }
            .navigationTitle("Metal Demos")
            .navigationDestination(for: MetalDemo.self) { demo in
                switch demo {
                case .colors: ColorsView()
                case .polka: PolkaDotView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
