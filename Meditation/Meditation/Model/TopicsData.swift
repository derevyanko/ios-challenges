import SwiftUI

final class TopicsData: ObservableObject {
    var topics = [
        TopicData(name: "Sleep\nMeditation", image: Image(systemName: "headphones"), color: Color.purple),
        TopicData(name: "Tips For\nSleeping", image: Image(systemName: "video"), color: Color.green),
        TopicData(name: "Night\nIsland", image: Image(systemName: "moon.stars"), color: Color.yellow),
        TopicData(name: "Calming\nSounds", image: Image(systemName: "music.note"), color: Color.orange)
    ]
}

struct TopicData {
    var name: String
    var image: Image
    var color: Color
}
