import SwiftUI

struct LoginView: View {
    @EnvironmentObject var router: AppRouter
    @EnvironmentObject var auth: AuthenticationViewModel
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ScrollView {
            VStack(spacing: 22) {
                Image(systemName: "camera").font(.system(size: 60)).foregroundStyle(.purple)
                Text(auth.configured ? "Login" : "Create Local Account").font(.largeTitle.bold())
                Text(auth.configured ? "Sign in to continue" : "Set up credentials on this iPhone").foregroundStyle(.secondary)
                TextField("Email", text: $email).keyboardType(.emailAddress).textContentType(.emailAddress).textInputAutocapitalization(.never).autocorrectionDisabled().textFieldStyle(.roundedBorder)
                SecureField("Password (8+ characters)", text: $password).textFieldStyle(.roundedBorder)
                if !auth.error.isEmpty { Text(auth.error).foregroundStyle(.red).font(.footnote) }
                Button { if auth.login(email: email, password: password) { router.navigate(to: .dashboard) } } label: { Text(auth.configured ? "Login" : "Create Account").frame(maxWidth: .infinity) }.buttonStyle(.borderedProminent)
                if auth.canUseBiometrics { Button("Use Biometrics") { router.navigate(to: .faceID) } }
            }.padding(28).padding(.top, 60)
        }
    }
}
