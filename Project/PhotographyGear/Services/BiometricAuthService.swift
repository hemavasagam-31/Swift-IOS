import LocalAuthentication

struct BiometricAuthService {
    func available() -> Bool { LAContext().canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) }
    func authenticate() async throws -> Bool {
        let context = LAContext()
        return try await context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Unlock your photography inventory")
    }
}
