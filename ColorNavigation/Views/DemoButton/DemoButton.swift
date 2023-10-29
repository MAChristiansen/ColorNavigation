import SwiftUI

struct DemoButton: View {
    
    var viewModel: DemoButtonViewModel
    
    var body: some View {
        Button {
            viewModel.action()
        } label: {
            Text(viewModel.title.uppercased())
                .font(.medium(size: 16))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white))
        }
        .padding(.horizontal)
        .shadow(color: .black.opacity(0.2), radius: 8)
    }
}

struct DemoButton_Previews: PreviewProvider {
    static var previews: some View {
        DemoButton(viewModel: .createBackNavigation())
    }
}
