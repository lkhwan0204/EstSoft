import SwiftUI

class UserSettings: ObservableObject {
    @Published var username: String = "Guest"
}

struct ParentView: View {
    @StateObject var settings = UserSettings()

    var body: some View {
        ChildView().environmentObject(settings)
    }
}

struct ChildView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        Text("Hello, \(settings.username)!").font(.largeTitle)
    }
}

#Preview {
    ParentView()
}
