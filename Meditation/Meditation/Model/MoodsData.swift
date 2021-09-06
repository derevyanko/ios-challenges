import SwiftUI

class MoodsData: ObservableObject {
    @Published var selectedMoodIndex = 0
    var moods = [
        NSLocalizedString("Sweet Sleep", comment: ""),
        NSLocalizedString("Insomnia", comment: ""),
        NSLocalizedString("Depressic", comment: ""),
        NSLocalizedString("Disorder", comment: "")
    ]
}
