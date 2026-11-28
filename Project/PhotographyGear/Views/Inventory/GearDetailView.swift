import SwiftUI
import SwiftData

struct GearDetailView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @StateObject private var vm = GearViewModel()
    @State private var confirm = false
    let item: GearItem
    var body: some View {
        List {
            Section { VStack(alignment: .leading, spacing: 14) {
                Image(systemName: item.category.symbol).resizable().scaledToFit().frame(height: 120).foregroundStyle(.purple).frame(maxWidth: .infinity)
                Text(item.name).font(.title.bold()); StatusBadgeView(status: item.status)
            }.padding(.vertical) }
            Section("Details") {
                LabeledContent("Category", value: item.category.rawValue)
                LabeledContent("Location", value: item.location)
                LabeledContent("Purchase Date", value: item.purchaseDate.formatted(date: .abbreviated, time: .omitted))
                LabeledContent("Status", value: item.status.rawValue)
            }
            Section("Notes") { Text(item.notes.isEmpty ? "No notes" : item.notes) }
            if !vm.error.isEmpty { Text(vm.error).foregroundStyle(.red) }
        }.navigationTitle("Gear Details").toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                NavigationLink { EditGearView(item: item) } label: { Image(systemName: "pencil") }
                Button(role: .destructive) { confirm = true } label: { Image(systemName: "trash").foregroundStyle(.red) }
            }
        }.confirmationDialog("Delete Gear?", isPresented: $confirm, titleVisibility: .visible) {
            Button("Delete", role: .destructive) { if vm.delete(item, context: context) { dismiss() } }
            Button("Cancel", role: .cancel) {}
        } message: { Text("Remove this equipment from your inventory?") }
    }
}
