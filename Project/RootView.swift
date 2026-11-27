import SwiftUI

struct RootView: View {
    @EnvironmentObject var router: AppRouter

    var body: some View {
        switch router.currentScreen {
        case .splash:
            VStack(spacing: 20) {
                Image(systemName: "camera.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(.purple)

                Text("Photography Gear Inventory")
                    .font(.title)
                    .bold()

                Button("Get Started") {
                    router.navigate(to: .login)
                }
            }

        case .faceID:
            VStack(spacing: 20) {
                Image(systemName: "faceid")
                    .font(.system(size: 70))

                Text("Face ID")
                    .font(.title)

                Button("Login Manually") {
                    router.navigate(to: .login)
                }
            }

        case .login:
            VStack(spacing: 20) {
                Text("Login")
                    .font(.title)

                Button("Continue Demo") {
                    router.navigate(to: .dashboard)
                }
            }

        case .dashboard:
            VStack(spacing: 20) {
                Text("Dashboard")
                    .font(.largeTitle)

                Button("Logout") {
                    router.navigate(to: .login)
                }
            }
        }
    }
}