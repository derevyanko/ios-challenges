import SwiftUI

final class TabsData: ObservableObject {
    @Published var selectedTabIndex = 0
    var tabs = [
        TabData(id: 0, image: Image(systemName: "squareshape.split.3x3")),
        TabData(id: 1, image: Image(systemName: "film")),
        TabData(id: 2, image: Image(systemName: "airplayvideo")),
        TabData(id: 3, image: Image(systemName: "person.crop.rectangle.fill"))
    ]
}

struct TabData: Identifiable {
    var id: Int
    var image: Image
}
