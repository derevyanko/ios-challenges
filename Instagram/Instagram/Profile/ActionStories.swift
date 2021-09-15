import SwiftUI

struct ActionStories: View {
    var body: some View {
        HStack {
            StoryView(image: Image("youtube"), name: "YouTube")
            
            StoryView(image: Image("qa"), name: "Q&A")
            
            StoryView(image: Image("discord"), name: "Discord")
            
            StoryView(image: Image("telegram"), name: "Telegram")
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct StoryView: View {
    var image: Image
    var name: String
    
    var body: some View {
        VStack(spacing: 4) {
            image
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .padding(2)
                .overlay(
                    Circle()
                        .stroke(Color.gray, lineWidth: 2)
                        .opacity(0.5)
                )
            
            Text(name)
                .lineLimit(1)
        }
    }
}


struct ActionStories_Previews: PreviewProvider {
    static var previews: some View {
        ActionStories()
    }
}
