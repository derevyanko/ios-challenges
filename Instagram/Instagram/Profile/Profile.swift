import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 12) {
                Header()

                StatsRow()
                
                Info()
                
                Navigation()
                
                ActionStories()
                
                Tabs()
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
            .environmentObject(TabsData())
    }
}
