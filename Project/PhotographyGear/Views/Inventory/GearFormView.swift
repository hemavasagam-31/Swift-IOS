import SwiftUI
import SwiftData

struct GearFormView: View {
    @Environment(\.modelContext) private var context
    @ObservedObject var vm: GearFormViewModel
    let title: String
    let onSaved: () -> Void
    var body: some View {
        Form {
            Section("Equipment") {
                TextField("Gear Name", text: $vm.name)
                Picker("Category", selection: $vm.category) { ForEach(GearCategory.allCases) { Text($0.rawValue).tag($0) } }
                TextField("Bag / Shelf Location", text: $vm.location)
                DatePicker("Purchase Date", selection: $vm.purchaseDate, in: ...Date(), displayedComponents: .date)
                Picker("Status", selection: $vm.status) { ForEach(GearStatus.allCases) { Text($0.rawValue).tag($0) } }
            }
            Section("Notes") { TextEditor(text: $vm.notes).frame(minHeight: 95) }
            if !vm.error.isEmpty { Text(vm.error).foregroundStyle(.red) }
            Button { if vm.save(context: context) { onSaved() } } label: { Text(title).frame(maxWidth: .infinity) }.buttonStyle(.borderedProminent)
        }
    }
}
