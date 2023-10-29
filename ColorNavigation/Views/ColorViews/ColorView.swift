import SwiftUI

struct ColorView: View {
    
    var viewModel: ColorViewModel
    
    var body: some View {
        ZStack {
            viewModel.color
                .opacity(0.25)
                .ignoresSafeArea()
            
            makeButtonList()
            .padding(.vertical)
        }
        .addNavigationTitle(viewModel.color.toEmoji() + " view")
    }
    
    @ViewBuilder
    func makeButtonList() -> some View {
        VStack {
            Spacer()
            ForEach(viewModel.buttons) { button in
                DemoButton(viewModel: button)
            }
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(viewModel: ColorViewModel(color: .red, buttons: [.createBackNavigation()]))
    }
}

extension Color {
    func toEmoji() -> String {
        switch self {
        case .red:
            return "🟥"
        case .blue:
            return "🟦"
        case .yellow:
            return "🟨"
        case .green:
            return "🟩"
        default:
            return ""
        }
    }
}

extension View {
    @ViewBuilder
    func addNavigationTitle(_ title: String) -> some View {
        self
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(title.uppercased())
                        .font(.bold(size: 18))
                }
            }
    }
}
