import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Home()
            
            TabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TabViewsData())
            .environmentObject(TopicsData())
            .environmentObject(MoodsData())
    }
}
