
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
                            FormRowStaticView(icon: "globe", firstText: "Website", secondText: "weldlearn.com")
                            FormRowStaticView(icon: "flag", firstText: "Version", secondText: "1.0.0")
                        }//: sec 4
                        .padding(.vertical, 3)

                            Image(.weldLogo12 )
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .padding()
                        Text("""
        This app is designed for quick reference of topics that are way more detailed in other books and volumes. This is no way an attempt to replace the wealth of knowledge that already exists. Use this app as a refresher or maybe something you don't remember but don't have time to research. Also, there is a section where if you are in school and are practicing your joints and positions you can keep track and save your progress in an organized way.

        Disclaimer: The information in this app is purely my own and in no way is it endorsed or affiliated with any authoratative organization. Use the information contained in this app at your own discretion and by all means, seek out the library of welding information from the American Welding Society and the ASME collection. Welding is a constantly evolving field and all illustrations and specific descriptions can be considered suitable for general guidance. It is the user of this apps choice to use it for his or hers intended application.
    """)

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
