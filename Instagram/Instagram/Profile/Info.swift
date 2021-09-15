import SwiftUI

struct Info: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Programming mentor")
                .fontWeight(.bold)
            
            Text("10 years of coding experience\n" +
                "Want me to make your app? Send me an email!\n" +
                "Subscribe to my YouTube channel!")
            
            Link("https://youtube.com/c/PhilippLackner",
                 destination: URL(string: "https://youtube.com/c/PhilippLackner")!
            )
            
            Group {
                Text("Followed by ") +
                Text("codingflow, soruc_ahlem and 17 others")
                    .bold()
            }
        }.padding(.horizontal, 20)
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
