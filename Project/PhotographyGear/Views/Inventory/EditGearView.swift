import SwiftUI

struct EditGearView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var vm: GearFormViewModel
    init(item: GearItem) { _vm = StateObject(wrappedValue: GearFormViewModel(item: item)) }
    var body: some View { GearFormView(vm: vm, title: "Update Gear", onSaved: { dismiss() }).navigationTitle("Edit Gear") }
}
