// Default City

// Create an optional String called city.

// Use nil coalescing to provide "Coimbatore" as the default value.

// Expected output (when city is nil):
// City: Coimbatore

var city: String? = nil

let displayCity = city ?? "Coimbatore"
print("City: \(displayCity)")