import SwiftUI

final class TabViewsData: ObservableObject {
    @Published var selectedTabIndex = 0
    var tabItems = [
        TabItem(
            id: 0,
            name: NSLocalizedString("Home", comment: ""),
            image: Image(systemName: "house")
        ),
        TabItem(
            id: 1,
            name: NSLocalizedString("Meditate", comment: ""),
            image: Image(systemName: "oval")
        ),
        TabItem(
            id: 2,
            name: NSLocalizedString("Sleep", comment: ""),
            image: Image(systemName: "moon")
        ),
        TabItem(
            id: 3,
            name: NSLocalizedString("Music", comment: ""),
            image: Image(systemName: "music.note")
        ),
        TabItem(
            id: 4,
            name: NSLocalizedString("Profile", comment: ""),
            image: Image(systemName: "person.crop.circle")
        )
    ]
}

struct TabItem: Identifiable {
    var id: Int
    var name: String
    var image: Image
}
