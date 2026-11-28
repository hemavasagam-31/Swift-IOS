import Foundation

enum GearCategory: String, CaseIterable, Identifiable, Codable {
    case camera = "Camera Bodies", lens = "Lenses", lighting = "Lighting", tripod = "Tripods"
    var id: String { rawValue }
    var symbol: String {
        switch self { case .camera: return "camera.fill"; case .lens: return "camera.aperture"; case .lighting: return "lightbulb.fill"; case .tripod: return "camera.on.rectangle" }
    }
}
