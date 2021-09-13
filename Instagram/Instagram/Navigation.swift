import SwiftUI

struct Navigation: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                HStack(spacing: 4) {
                    Text("Following")
                        .fontWeight(.medium)
                    
                    Image(systemName: "chevron.down")
                }
            })
            .frame(width: 112, height: 28)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 1)
            )
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Message")
                    .fontWeight(.medium)
            })
            .frame(width: 112, height: 28)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 1)
            )
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Email")
                    .fontWeight(.medium)
            })
            .frame(width: 112, height: 28)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 1)
            )
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "chevron.down")
            })
            .frame(width: 28, height: 28)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }.foregroundColor(.black)
        .padding()
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
