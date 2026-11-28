import SwiftUI
import SwiftData

struct GearListView: View {
    @Query(sort: \GearItem.createdAt, order: .reverse) private var items: [GearItem]
    @StateObject private var vm = GearViewModel()
    @State private var adding = false
    var body: some View {
        List {
            Picker("Category", selection: $vm.category) {
                Text("All").tag(nil as GearCategory?)
                ForEach(GearCategory.allCases) { Text($0.rawValue).tag(Optional($0)) }
            }
            ForEach(vm.filtered(items)) { item in NavigationLink { GearDetailView(item: item) } label: { GearCardView(item: item) } }
            if vm.filtered(items).isEmpty { ContentUnavailableView("No gear found", systemImage: "camera") }
        }.navigationTitle("My Gear").searchable(text: $vm.search, prompt: "Search name or notes")
            .toolbar { Button { adding = true } label: { Image(systemName: "plus") } }
            .sheet(isPresented: $adding) { NavigationStack { AddGearView() } }
    }
}
