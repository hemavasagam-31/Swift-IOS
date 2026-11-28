import Foundation
import SwiftData

@Model final class GearItem {
    var name: String
    var categoryRaw: String
    var location: String
    var purchaseDate: Date
    var statusRaw: String
    var notes: String
    var createdAt: Date
    var category: GearCategory { GearCategory(rawValue: categoryRaw) ?? .camera }
    var status: GearStatus { GearStatus(rawValue: statusRaw) ?? .ready }
    init(name: String, category: GearCategory, location: String, purchaseDate: Date, status: GearStatus, notes: String) {
        self.name = name; self.categoryRaw = category.rawValue; self.location = location
        self.purchaseDate = purchaseDate; self.statusRaw = status.rawValue; self.notes = notes; self.createdAt = Date()
    }
}
