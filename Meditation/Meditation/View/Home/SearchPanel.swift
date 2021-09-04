import SwiftUI

struct SearchPanel: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Good Morning, Oleh")
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("We wish you have a good day!")
                    .font(.callout)
                    .foregroundColor(.gray)
            }.foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 24, height: 24)
        }.padding()
    }
}

struct SearchPanel_Previews: PreviewProvider {
    static var previews: some View {
        SearchPanel()
            .preferredColorScheme(.dark)
    }
}
