
import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel = .init()
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                TextField("Enter your email", text: $viewModel.emailText)
                    .textFieldStyle(.roundedBorder)
                    .onChange(of: viewModel.emailText) { oldValue, newValue in
                        viewModel.validateEmail()
                    }
                Text(viewModel.emailError)
                    .font(.caption)
                    .foregroundStyle(Color.red)
            }
            .padding()
            
            NavigationLink{
                DetailView(viewModel: DetailViewModel(emailText: viewModel.emailText))
            } label: {
                Text("Contact")
            }
            .buttonStyle(.borderedProminent)
            .disabled(!viewModel.isValidEmail)
            
//            Text("\(viewModel.counter)")
//                .font(.largeTitle)
//            
//            HStack {
//                Button("-") {
//                    viewModel.decrease()
//                }
//                .buttonStyle(.borderedProminent)
//                Button("+") {
//                    viewModel.increase()
//                }
//                .buttonStyle(.borderedProminent)
//            }
        }
    }
}

#Preview {
    HomeView()
}
