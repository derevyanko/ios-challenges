import SwiftUI

final class TopicsData: ObservableObject {
    var topics = [
        TopicData(
            name: NSLocalizedString("Sleep\nMeditation", comment: ""),
            image: Image(systemName: "headphones"),
            color: Color.purple
        ),
        TopicData(
            name: NSLocalizedString("Tips For\nSleeping", comment: ""),
            image: Image(systemName: "video"),
            color: Color.green
        ),
        TopicData(
            name: NSLocalizedString("Night\nIsland", comment: ""),
            image: Image(systemName: "moon.stars"),
            color: Color.yellow
        )
//        TopicData(
//            name: NSLocalizedString("Calming\nSounds", comment: ""),
//            image: Image(systemName: "music.note"),
//            color: Color.orange
//        )
    ]
}

struct TopicData {
    var name: String
    var image: Image
    var color: Color
}
