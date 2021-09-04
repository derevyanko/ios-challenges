import SwiftUI

@main
struct MeditationApp: App {
    @StateObject private var tabViews = TabViewsData()
    @StateObject private var topicsData = TopicsData()
    @StateObject private var moodsData = MoodsData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TabViewsData())
                .environmentObject(TopicsData())
                .environmentObject(MoodsData())
        }
    }
}
