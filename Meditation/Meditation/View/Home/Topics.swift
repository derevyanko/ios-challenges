import SwiftUI

struct Topics: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            
            HStack {
                Topic(topicName: "Sleep\nMeditation", topicImage: Image(systemName: "headphones"), topicColor: Color.purple)
                Topic(topicName: "Tips\nFor Sleeping", topicImage: Image(systemName: "video"), topicColor: Color.green)
            }
            HStack {
                Topic(topicName: "Night\nIsland", topicImage: Image(systemName: "moon.stars"), topicColor: Color.yellow)
                Topic(topicName: "Calming\nSounds", topicImage: Image(systemName: "music.note"), topicColor: Color.orange)
            }
        }
    }
}

struct Topic: View {
    var topicName: String
    var topicImage: Image
    var topicColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(topicName)
                .font(.title3)
                .fontWeight(.bold)
            
            Spacer()
            
            HStack {
                topicImage
                    .resizable()
                    .frame(maxWidth: 30, maxHeight: 25)
                    .scaledToFit()
                
                Spacer()
                
                Text("Start")
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(15)
            }
        }
        .frame(height: 150)
        .padding()
        .background(topicColor)
        .cornerRadius(10)
    }
}

struct Topics_Previews: PreviewProvider {
    static var previews: some View {
        Topics()
            .preferredColorScheme(.dark)
    }
}
