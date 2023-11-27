import Foundation
import CruiseControl
import SwiftUI

enum MainTabDestination: CCTabDestination {
    
    var id: MainTabDestination { self }
    
    case circle
    case square
    
    @ViewBuilder
    func buildItemView() -> some View {
        switch self {
        case .circle:
            Label("Circle", systemImage: "circle")
        case .square:
            Label("Square", systemImage: "square")
        }
    }
    
    @ViewBuilder
    func buildRootView() -> some View {
        switch self {
        case .circle:
            MainView()
        case .square:
            SquareView()
        }
    }
}
