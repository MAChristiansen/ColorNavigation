import SwiftUI
import CruiseControl

struct MainTabBar: View {
    var body: some View {
        CCTabView(
            viewModel: CCTabViewModel<MainTabDestination>(
                navigationService: navigationService,
                selectedItem: .circle,
                items: [.circle, .square]
            )
        )
    }
}

#Preview {
    MainTabBar()
}
