import SwiftUI
import SwiftData

struct DashboardView: View {
    @Query(sort: \GearItem.createdAt, order: .reverse) private var items: [GearItem]
    let showGear: () -> Void
    var body: some View {
        let vm = DashboardViewModel(items: items)
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Welcome back!").foregroundStyle(.secondary)
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                    DashboardCardView(title: "Total Gear", value: vm.total, symbol: "camera", color: .purple)
                    DashboardCardView(title: "Categories", value: vm.categories, symbol: "square.stack", color: .indigo)
                    DashboardCardView(title: "Ready to Shoot", value: vm.ready, symbol: "checkmark.circle.fill", color: .green)
                    DashboardCardView(title: "Needs Service", value: vm.service, symbol: "wrench", color: .orange)
                }
                HStack { Text("Recently Added").font(.headline); Spacer(); Button("See All", action: showGear) }
                if vm.recent.isEmpty { ContentUnavailableView("No gear yet", systemImage: "camera", description: Text("Use the Add tab to create your first record.")) }
                ForEach(vm.recent) { item in NavigationLink { GearDetailView(item: item) } label: { GearCardView(item: item).padding(10).background(.purple.opacity(0.05), in: RoundedRectangle(cornerRadius: 12)) }.buttonStyle(.plain) }
            }.padding()
        }.navigationTitle("Dashboard")
    }
}
