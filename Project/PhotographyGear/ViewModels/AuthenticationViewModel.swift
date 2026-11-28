import Foundation
import Combine

@MainActor final class AuthenticationViewModel: ObservableObject {
    @Published private(set) var authenticated = false
    @Published var error = ""
    @Published var busy = false
    @Published private(set) var configured: Bool
    private let keychain = KeychainService()
    private let biometric = BiometricAuthService()
    init() { configured = KeychainService().read() != nil }
    var canUseBiometrics: Bool { configured && biometric.available() }
    func login(email: String, password: String) -> Bool {
        error = ""
        let address = email.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        guard address.contains("@"), address.split(separator: "@").count == 2, address.split(separator: "@").last?.contains(".") == true, password.count >= 8 else { error = "Enter a valid email and at least 8 password characters."; return false }
        let success = configured ? keychain.verify(email: address, password: password) : keychain.save(email: address, password: password)
        guard success else { error = configured ? "Incorrect email or password." : "Could not save credentials."; return false }
        configured = true; authenticated = true; return true
    }
    func unlock() async -> Bool {
        guard canUseBiometrics, !busy else { return false }
        busy = true; error = ""; defer { busy = false }
        do { authenticated = try await biometric.authenticate(); return authenticated }
        catch { self.error = "Biometric authentication failed. Use manual login."; return false }
    }
    func logout() { authenticated = false; error = "" }
}
