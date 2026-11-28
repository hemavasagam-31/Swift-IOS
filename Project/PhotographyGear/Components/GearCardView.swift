import SwiftUI

struct GearCardView: View {
    let item: GearItem
    var body: some View {
        HStack(spacing: 12) {
            Image(item.category.rawValue == "Camera Bodies" ? "Camera" : item.category.rawValue == "Lenses" ? "Lens" : item.category.rawValue == "Lighting" ? "Lighting" : "Tripod").resizable().scaledToFit().frame(width: 52, height: 52)
            VStack(alignment: .leading, spacing: 4) { Text(item.name).font(.headline); Text(item.category.rawValue); Text(item.location) }.font(.caption).foregroundStyle(.primary)
            Spacer()
            StatusBadgeView(status: item.status)
        }.padding(.vertical, 5)
    }
}
