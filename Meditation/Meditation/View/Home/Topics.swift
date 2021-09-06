import SwiftUI

struct Topics: View {
    @EnvironmentObject private var topicsData: TopicsData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
                .foregroundColor(.white )
            
            ForEach(Array(stride(from: 0, to: topicsData.topics.count, by: 2)), id: \.self) { index in
                HStack {
                    Topic(topicData: topicsData.topics[index])
                    if index + 1 == topicsData.topics.count {
                        EmptyView()
                    } else {
                        Topic(topicData: topicsData.topics[index + 1])
                    }
                }
            }
        }.padding()
    }
}

struct Topic: View {
    var topicData: TopicData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(topicData.name)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
            
            HStack {
                topicData.image
                    .resizable()
                    .frame(maxWidth: 32, maxHeight: 28)
                    .scaledToFit()
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("Start")
                    .padding(.vertical, 12)
                    .padding(.horizontal, 20)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(16)
            }
        }.frame(maxHeight: 152)
        .padding()
        .background(topicData.color)
        .cornerRadius(12)
    }
}

struct Topics_Previews: PreviewProvider {
    static var previews: some View {
        Topics()
            .environmentObject(TopicsData())
    }
}
