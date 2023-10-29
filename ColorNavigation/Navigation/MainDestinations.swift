import Foundation
import CruiseControl
import SwiftUI

enum MainDestinations: CCDestination {
    case red
    case blue
    case yellow
    case green
    case redSheet
    
    @ViewBuilder
    func buildView() -> some View {
        switch self {
        case .red:
            ColorView(viewModel: ColorViewModel.red)
        case .blue:
            ColorView(viewModel: .blue)
        case .yellow:
            ColorView(viewModel: .yellow)
        case .green:
            ColorView(viewModel: .green)
        case .redSheet:
            ColorView(viewModel: .redSheet)
        }
    }
}
