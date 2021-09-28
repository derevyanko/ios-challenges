import SwiftUI

struct Header: View {
    var body: some View {
        HStack(spacing: 0) {
            Text(Image(systemName: "arrow.backward"))
            
            Text("derevyanko25")
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .lineLimit(1)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 20) {
                Text(Image(systemName: "bell"))
                
                Text(Image(systemName: "dot.square"))
            }
        }
        .font(.title2)
        .padding(.horizontal, 12)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
