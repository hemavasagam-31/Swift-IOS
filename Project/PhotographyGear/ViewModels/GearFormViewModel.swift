import Foundation
import Combine
import SwiftData

@MainActor final class GearFormViewModel: ObservableObject {
    @Published var name = ""
    @Published var category: GearCategory = .camera
    @Published var location = ""
    @Published var purchaseDate = Date()
    @Published var status: GearStatus = .ready
    @Published var notes = ""
    @Published var error = ""
    private let item: GearItem?
    init(item: GearItem? = nil) {
        self.item = item
        if let item { name = item.name; category = item.category; location = item.location; purchaseDate = item.purchaseDate; status = item.status; notes = item.notes }
    }
    func save(context: ModelContext) -> Bool {
        let n = name.trimmingCharacters(in: .whitespacesAndNewlines)
        let l = location.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !n.isEmpty, !l.isEmpty, purchaseDate <= Date() else { error = "Enter a name, location and valid purchase date."; return false }
        let repository = GearRepository(context: context)
        do {
            if let item {
                item.name = n; item.categoryRaw = category.rawValue; item.location = l; item.purchaseDate = purchaseDate; item.statusRaw = status.rawValue; item.notes = notes
                try repository.save()
            } else { try repository.add(GearItem(name: n, category: category, location: l, purchaseDate: purchaseDate, status: status, notes: notes)) }
            return true
        } catch { self.error = error.localizedDescription; return false }
    }
}
