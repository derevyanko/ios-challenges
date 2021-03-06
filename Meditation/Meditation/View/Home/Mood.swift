import SwiftUI

struct MoodView: View {
    @EnvironmentObject private var moodsData: MoodsData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(Array(moodsData.moods.enumerated()), id: \.1) { index, sleeping in
                    Button(sleeping) {
                        moodsData.selectedMoodIndex = index
                    }.padding()
                    .background(moodsData.selectedMoodIndex == index ? Color.pink : Color.secondary)
                    .foregroundColor(.white)
                    .cornerRadius(16)
                    .padding(.leading, 16)
                }
            }
        }.listRowInsets(EdgeInsets())
    }
}

struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        MoodView()
            .environmentObject(MoodsData())
    }
}
