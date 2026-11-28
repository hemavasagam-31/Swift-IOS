import Foundation

enum GearStatus: String, CaseIterable, Identifiable, Codable {
    case ready = "Ready", inBag = "In Bag", service = "Needs Service"
    var id: String { rawValue }
}
