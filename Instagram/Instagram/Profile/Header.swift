import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Text(Image(systemName: "arrow.backward"))
            
            Spacer()
            
            Text("derevyanko25")
                .fontWeight(.bold)
            
            Spacer()
            
            Text(Image(systemName: "bell"))
            
            Spacer()
            
            Text(Image(systemName: "dot.square"))
        }
        .font(.title3)
        .padding(.horizontal)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
