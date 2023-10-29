import SwiftUI
import CruiseControl

struct MainRootView: View {
    
    @StateObject var viewModel = MainRootViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("🕹️")
                .font(.bold(size: 80))
            Text("Cruise Control\nDemo".uppercased())
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

class MainRootViewModel: ObservableObject {
    var buttons: [DemoButtonViewModel] = [
        DemoButtonViewModel(title: "Navigate to 🟥", action: {
            navigationService?.push(MainDestinations.red)
        }),
        DemoButtonViewModel(title: "Push 🟦 🟨", action: {
            navigationService?.push([MainDestinations.blue, .yellow])
        }),
        DemoButtonViewModel(title: "Display sheet 🟥") {
            navigationService?.display(MainDestinations.redSheet)
        },
        DemoButtonViewModel(title: "Display Demo Alert 🚨") {
            navigationService?.display(
                MainDestinations.self,
                alertModel: AlertModel(
                    title: "Demo Title",
                    message: "This is a demo alert!",
                    buttons: [AlertButton(title: "Close", role: .cancel, action: {
                        navigationService?.dismissAlert(MainDestinations.self)
                    })]))
        }
    ]
}

struct MainRootView_Previews: PreviewProvider {
    static var previews: some View {
        MainRootView()
    }
}
