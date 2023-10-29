import SwiftUI
import CruiseControl

@main
struct ColorNavigationApp: App {
    
    init() {
        initializeCruiseControl()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
