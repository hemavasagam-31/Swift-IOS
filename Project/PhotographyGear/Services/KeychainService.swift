import Foundation
import Security
import CryptoKit

struct KeychainService {
    private let service = "com.photographygear.local"
    private var query: [String: Any] { [kSecClass as String: kSecClassGenericPassword, kSecAttrService as String: service, kSecAttrAccount as String: "credentials"] }
    func read() -> Data? {
        var q = query; q[kSecReturnData as String] = true; q[kSecMatchLimit as String] = kSecMatchLimitOne
        var result: CFTypeRef?
        guard SecItemCopyMatching(q as CFDictionary, &result) == errSecSuccess else { return nil }
        return result as? Data
    }
    func save(email: String, password: String) -> Bool {
        let salt = UUID().uuidString
        let digest = hash(email: email, password: password, salt: salt)
        guard let data = try? JSONEncoder().encode([email, salt, digest]) else { return false }
        var q = query; q[kSecValueData as String] = data; q[kSecAttrAccessible as String] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        return SecItemAdd(q as CFDictionary, nil) == errSecSuccess
    }
    func verify(email: String, password: String) -> Bool {
        guard let data = read(), let values = try? JSONDecoder().decode([String].self, from: data), values.count == 3 else { return false }
        return values[0] == email && values[2] == hash(email: email, password: password, salt: values[1])
    }
    private func hash(email: String, password: String, salt: String) -> String {
        SHA256.hash(data: Data((salt + email + password).utf8)).map { String(format: "%02x", $0) }.joined()
    }
}
