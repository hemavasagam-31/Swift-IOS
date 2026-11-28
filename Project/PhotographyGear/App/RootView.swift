import SwiftUI

struct RootView: View {
    @EnvironmentObject var router: AppRouter
    @EnvironmentObject var auth: AuthenticationViewModel
    var body: some View {
        Group {
            switch router.currentScreen {
            case .splash: SplashView()
            case .faceID: FaceIDView()
            case .login: LoginView()
            case .dashboard:
                if auth.authenticated { MainTabView() } else { LoginView() }
            }
        }.tint(.purple)
    }
}
