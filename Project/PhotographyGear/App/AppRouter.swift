import Combine

enum AppScreen { case splash, faceID, login, dashboard }

@MainActor final class AppRouter: ObservableObject {
    @Published private(set) var currentScreen: AppScreen = .splash
    func navigate(to screen: AppScreen) { currentScreen = screen }
}
