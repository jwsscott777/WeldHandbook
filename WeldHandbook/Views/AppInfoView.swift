
import SwiftUI

struct AppInfoView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
                VStack(alignment: .center, spacing: 0.0) {
                    Form {
                        Section(header: Text("About the Application")) {
                            FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Weld Handbook")
                            FormRowStaticView(icon: "checkmark.seal", firstText: "Compatible", secondText: "iPhone, iPad")
                            FormRowStaticView(icon: "keyboard", firstText: "Developer", secondText: "James Scott")
                            FormRowStaticView(icon: "wrench", firstText: "Designer", secondText: "James Scott")
                            FormRowStaticView(icon: "flag", firstText: "Version", secondText: "1.0.0")
                        }//: sec 4
                        .padding(.vertical, 3)

                            Image(.weldLogo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .padding()

                    }//:form
                    .foregroundStyle(.red)




                    //mark footer
                    Text("Copyright  2023 🐶")
                        .font(.footnote)
                        .padding(.bottom, 6)
                        .padding(.top, 6)
                        .foregroundColor(Color.secondary)
                   
                }//:vstack
                .navigationBarItems(trailing:
                                        Button(action: {
                                           dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        }
                )
                .navigationBarTitle("Application Info")
            .navigationBarTitleDisplayMode(.inline)

        }//: Nav
    }
}

#Preview {
    AppInfoView()
}
