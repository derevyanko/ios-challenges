import SwiftUI

struct Navigation: View {
    var body: some View {
        HStack {
            NavigationButtonView(name: "Following", image: Image(systemName: "chevron.down"))
            
            NavigationButtonView(name: "Message", image: nil)
            
            NavigationButtonView(name: "Email", image: nil)
            
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

struct NavigationButtonView: View {
    var name: String
    var image: Image?
    
    var body: some View {
        Button(action: {}, label: {
            HStack(spacing: 4) {
                Text(name)
                    .fontWeight(.medium)
                
                if let image = image {
                    image
                }
            }
        })
        .frame(maxWidth: .infinity, maxHeight: 28)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
