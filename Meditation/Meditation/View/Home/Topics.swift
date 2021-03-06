import SwiftUI

struct Topics: View {
    @EnvironmentObject private var topicsData: TopicsData
    let topicsColumnCount = Int(UIScreen.screenWidth - 2 * 20) / 164
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0 ..< topicsData.topics.count / topicsColumnCount + 1) { rowIndex in
                HStack(spacing: 8) {
                    let startColumnIndex = rowIndex * topicsColumnCount
                    let endColumnIndex = min(startColumnIndex + topicsColumnCount, topicsData.topics.count)
                    
                    ForEach(startColumnIndex ..< endColumnIndex) { index in
                        TopicView(topicData: topicsData.topics[index])
                    }
                }
            }
        }.padding()
    }
}

struct TopicView: View {
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
                
                NavigationLink(destination: SleepMeditation()) {
                    Text("Start")
                        .padding(.vertical, 12)
                        .padding(.horizontal, 20)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(16)
                        .frame(maxHeight: 52)
                }
            }
        }.frame(minHeight: 140, maxHeight: 152)
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
