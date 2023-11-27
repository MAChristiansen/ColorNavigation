import Foundation
import SwiftUI

struct SquareView: View {
    
    var viewModel = SquareViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("🆕")
                .font(.bold(size: 80))
            Text("Square View".uppercased())
                .font(.bold(size: 42))
                .multilineTextAlignment(.center)
            
            Spacer()
            
            ForEach(viewModel.buttons) { button in
                DemoButton(viewModel: button)
            }
            
            Spacer()
        }
        .padding(.vertical)
    }
}

class SquareViewModel {
    var buttons: [DemoButtonViewModel] = [
        DemoButtonViewModel(title: "Navigate to ⭕️", action: {
            navigationService.changeTab(MainTabDestination.circle)
        }),
        
        DemoButtonViewModel(title: "Change Circle Bagde", action: {
            navigationService.changeTabBagde(for: MainTabDestination.circle, to: "\(Int.random(in: 1..<100))")
        })
    ]
}
