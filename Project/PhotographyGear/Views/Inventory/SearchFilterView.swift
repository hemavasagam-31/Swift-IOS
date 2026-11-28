import SwiftUI
import SwiftData

struct SearchFilterView: View {
    @Query(sort: \GearItem.createdAt, order: .reverse) private var items: [GearItem]
    @StateObject private var vm = GearViewModel()
    var body: some View {
        List {
            Section("Filter") {
                Picker("Category", selection: $vm.category) { Text("All").tag(nil as GearCategory?); ForEach(GearCategory.allCases) { Text($0.rawValue).tag(Optional($0)) } }
                Picker("Status", selection: $vm.status) { Text("All").tag(nil as GearStatus?); ForEach(GearStatus.allCases) { Text($0.rawValue).tag(Optional($0)) } }
                Button("Clear Filters") { vm.search = ""; vm.category = nil; vm.status = nil }
            }
            Section("Results (\(vm.filtered(items).count))") {
                ForEach(vm.filtered(items)) { item in NavigationLink { GearDetailView(item: item) } label: { GearCardView(item: item) } }
                if vm.filtered(items).isEmpty { ContentUnavailableView.search(text: vm.search) }
            }
        }.navigationTitle("Search & Filter").searchable(text: $vm.search, prompt: "Search name or notes")
    }
}
