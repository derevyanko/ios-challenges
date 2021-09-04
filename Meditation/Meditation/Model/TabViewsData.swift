import SwiftUI

final class TabViewsData: ObservableObject {
    @Published var selectedTabIndex = 0
    var tabItems = [
        TabItem(id: 0, name: "Home", image: Image(systemName: "house")),
        TabItem(id: 1, name: "Meditate", image: Image(systemName: "oval")),
        TabItem(id: 2, name: "Sleep", image: Image(systemName: "moon")),
        TabItem(id: 3, name: "Music", image: Image(systemName: "music.note")),
        TabItem(id: 4, name: "Profile", image: Image(systemName: "person.crop.circle"))
    ]
}

struct TabItem: Identifiable {
    var id: Int
    var name: String
    var image: Image
}
