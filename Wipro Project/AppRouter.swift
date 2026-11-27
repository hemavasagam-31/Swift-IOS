import SwiftUI
import Combine

enum AppScreen {
    case splash
    case faceID
    case login
    case dashboard
}

class AppRouter: ObservableObject {
    @Published var currentScreen: AppScreen = .splash

    func navigate(to screen: AppScreen) {
        currentScreen = screen
    }
}