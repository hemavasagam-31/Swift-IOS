import Foundation

struct DashboardViewModel {
    let items: [GearItem]
    var total: Int { items.count }
    var categories: Int { Set(items.map { $0.categoryRaw }).count }
    var ready: Int { items.filter { $0.status == .ready }.count }
    var service: Int { items.filter { $0.status == .service }.count }
    var recent: [GearItem] { Array(items.sorted { $0.createdAt > $1.createdAt }.prefix(3)) }
}
