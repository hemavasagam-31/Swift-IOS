import SwiftUI

struct StatusBadgeView: View {
    let status: GearStatus
    var color: Color { switch status { case .ready: return .green; case .inBag: return .blue; case .service: return .orange } }
    var body: some View { Text(status.rawValue).font(.caption.bold()).padding(.horizontal, 9).padding(.vertical, 5).foregroundStyle(color).background(color.opacity(0.15), in: Capsule()) }
}
