import SwiftUI
import CruiseControl

struct MainView: View {
    var body: some View {
        CCNavigationView(navigationStack: CCNavigationStack<MainDestinations>()) {
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
