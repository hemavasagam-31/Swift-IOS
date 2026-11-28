import Foundation
import Combine
import SwiftData

@MainActor final class GearViewModel: ObservableObject {
    @Published var search = ""
    @Published var category: GearCategory? = nil
    @Published var status: GearStatus? = nil
    @Published var error = ""
    func filtered(_ items: [GearItem]) -> [GearItem] {
        let term = search.trimmingCharacters(in: .whitespacesAndNewlines)
        return items.filter { item in
            (term.isEmpty || item.name.localizedCaseInsensitiveContains(term) || item.notes.localizedCaseInsensitiveContains(term)) && (category == nil || item.category == category) && (status == nil || item.status == status)
        }
    }
    func delete(_ item: GearItem, context: ModelContext) -> Bool {
        do { try GearRepository(context: context).delete(item); return true }
        catch { self.error = error.localizedDescription; return false }
    }
}
