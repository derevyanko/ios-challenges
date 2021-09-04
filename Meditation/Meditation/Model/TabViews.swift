import Foundation
import Combine

final class TabViews: ObservableObject {
    @Published var selectedTabIndex = 0
    var tabItems = [
        TabItem(id: 0, name: "Home", imageName: "house"),
        TabItem(id: 1, name: "Meditate", imageName: "oval"),
        TabItem(id: 2, name: "Sleep", imageName: "moon"),
        TabItem(id: 3, name: "Music", imageName: "music.note"),
        TabItem(id: 4, name: "Profile", imageName: "person.crop.circle")
    ]
}

struct TabItem: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
}
