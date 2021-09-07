import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Home()
            
            TabView()
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.deepBlue)
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
