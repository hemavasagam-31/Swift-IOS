import SwiftUI

struct FaceIDView: View {
    @EnvironmentObject var router: AppRouter
    @EnvironmentObject var auth: AuthenticationViewModel
    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "faceid").font(.system(size: 80)).foregroundStyle(.purple)
            Text("Biometric Login").font(.largeTitle.bold())
            Text("Use Face ID or Touch ID to access your gear inventory").multilineTextAlignment(.center).foregroundStyle(.secondary)
            if !auth.error.isEmpty { Text(auth.error).foregroundStyle(.red) }
            Button { Task { if await auth.unlock() { router.navigate(to: .dashboard) } } } label: { Text("Use Biometrics").frame(maxWidth: .infinity) }.buttonStyle(.borderedProminent).disabled(auth.busy || !auth.canUseBiometrics)
            Button("Login Manually") { auth.error = ""; router.navigate(to: .login) }.disabled(auth.busy)
        }.padding(28)
    }
}
