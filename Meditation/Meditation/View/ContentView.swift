import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Background()
                .frame(maxHeight: 1)
            
            Home()
            
            TabView()
            
            Background()
                .frame(maxHeight: 0)
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
