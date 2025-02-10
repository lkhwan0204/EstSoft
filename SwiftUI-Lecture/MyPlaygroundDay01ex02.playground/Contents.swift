import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI in Playground!")
                    .font(.largeTitle)
                    .foregroundColor(.green)
    }
}

PlaygroundPage.current.setLiveView(ContentView())
//PlaygroundPage.current.liveView = ContentView()
