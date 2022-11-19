import ComposableArchitecture
import SwiftUI

@main
struct OrgApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView(store: .init(initialState: Home.State(), reducer: Home()))
            }
        }
    }
}
