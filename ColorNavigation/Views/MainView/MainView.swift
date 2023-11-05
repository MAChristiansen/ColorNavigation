import SwiftUI
import CruiseControl

struct MainView: View {
    var body: some View {
        CCNavigationView(navigationStack: CCNavigationStack<MainDestinations>(navigationService: navigationService)) {
            MainRootView()
        }
        .accentColor(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
