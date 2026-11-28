import SwiftUI

struct AddGearView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var vm = GearFormViewModel()
    var onSaved: (() -> Void)? = nil
    var body: some View {
        GearFormView(vm: vm, title: "Save Gear") {
            if let onSaved { vm.name = ""; vm.location = ""; vm.notes = ""; vm.category = .camera; vm.status = .ready; vm.purchaseDate = Date(); vm.error = ""; onSaved() } else { dismiss() }
        }.navigationTitle("Add Gear")
    }
}
