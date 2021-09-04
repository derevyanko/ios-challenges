import SwiftUI

class MoodsData: ObservableObject {
    @Published var selectedMoodIndex = 0
    var moods = ["Sweet Sleep", "Insomnia", "Depressic", "Disorder"]
}
