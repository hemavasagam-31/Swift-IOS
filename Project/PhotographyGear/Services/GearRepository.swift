import SwiftData

@MainActor struct GearRepository {
    let context: ModelContext
    func add(_ item: GearItem) throws { context.insert(item); try save() }
    func delete(_ item: GearItem) throws { context.delete(item); try save() }
    func save() throws {
        do { try context.save() } catch { context.rollback(); throw error }
    }
}
