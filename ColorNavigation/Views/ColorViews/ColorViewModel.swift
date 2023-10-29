import Foundation
import SwiftUI
import CruiseControl

struct ColorViewModel {
    var color: Color
    var buttons: [DemoButtonViewModel]
}

extension ColorViewModel {
    static var red: ColorViewModel {
        ColorViewModel(color: .red, buttons: [
            DemoButtonViewModel(title: "Navigate to 🟦") {
                navigationService?.push(MainDestinations.blue)
            },
            .createBackNavigation()
        ])
    }
    
    static var redSheet: ColorViewModel {
        ColorViewModel(color: .red, buttons: [
            DemoButtonViewModel(title: "Close sheet 🚪") {
                navigationService?.dismissSheet(MainDestinations.self)
            }
        ])
    }
    
    static var blue: ColorViewModel {
        ColorViewModel(color: .blue, buttons: [
            DemoButtonViewModel(title: "Navigate to 🟨") {
                navigationService?.push(MainDestinations.yellow)
            },
            .createBackNavigation(),
            DemoButtonViewModel(title: "Navigate to 🫚") {
                navigationService?.popToRoot(MainDestinations.self)
            },
        ])
    }
    
    static var yellow: ColorViewModel {
        ColorViewModel(color: .yellow, buttons: [
            DemoButtonViewModel(title: "Navigate to 🟩") {
                navigationService?.push(MainDestinations.green)
            },
            DemoButtonViewModel(title: "Pop to 🟥") {
                navigationService?.pop(to: MainDestinations.red)
            },
            .createBackNavigation(),
            DemoButtonViewModel(title: "Navigate to 🫚") {
                navigationService?.popToRoot(MainDestinations.self)
            },
        ])
    }
    static var green: ColorViewModel {
        ColorViewModel(color: .green, buttons: [
            .createBackNavigation(),
            DemoButtonViewModel(title: "Navigate to 🫚") {
                navigationService?.popToRoot(MainDestinations.self)
            },
        ])
    }
}
