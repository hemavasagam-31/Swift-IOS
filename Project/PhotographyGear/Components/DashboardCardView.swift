import SwiftUI

struct DashboardCardView: View {
    let title: String
    let value: Int
    let symbol: String
    let color: Color
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: symbol).font(.title2).foregroundStyle(color)
            Text("\(value)").font(.title.bold())
            Text(title).font(.caption).foregroundStyle(.secondary)
        }.frame(maxWidth: .infinity, alignment: .leading).padding().background(color.opacity(0.07), in: RoundedRectangle(cornerRadius: 16))
    }
}
