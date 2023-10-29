import Foundation
import CruiseControl

struct DemoButtonViewModel: Identifiable {
    var id = UUID()
    
    var title: String
    var action: () -> Void
}

extension DemoButtonViewModel {
    static func createBackNavigation() -> DemoButtonViewModel {
        DemoButtonViewModel(title: "Navigate back 🔙") {
            navigationService?.pop(MainDestinations.self)
        }
    }
}
