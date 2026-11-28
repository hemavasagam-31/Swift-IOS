import SwiftUI

struct SplashView: View {
    @EnvironmentObject var router: AppRouter
    @EnvironmentObject var auth: AuthenticationViewModel
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(red: 0.09, green: 0.04, blue: 0.22), .purple], startPoint: .top, endPoint: .bottomTrailing).ignoresSafeArea()
            VStack(spacing: 22) {
                Image(systemName: "camera.aperture").font(.system(size: 85))
                Text("Photography Gear Inventory").font(.largeTitle.bold()).multilineTextAlignment(.center)
                Text("Manage your cameras, lenses and studio gear").multilineTextAlignment(.center)
                Button("Get Started") { router.navigate(to: auth.canUseBiometrics ? .faceID : .login) }.buttonStyle(.borderedProminent).tint(.white).foregroundStyle(.purple)
            }.foregroundStyle(.white).padding(30)
        }
    }
}
