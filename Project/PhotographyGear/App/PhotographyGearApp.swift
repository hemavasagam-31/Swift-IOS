import SwiftUI
import SwiftData

@main
struct PhotographyGearApp: App {
    @StateObject private var router = AppRouter()
    @StateObject private var auth = AuthenticationViewModel()
    var body: some Scene {
        WindowGroup {
            RootView().environmentObject(router).environmentObject(auth)
        }
        .modelContainer(for: GearItem.self)
    }
}
