import SwiftUI

@main
struct MeditationApp: App {
    @StateObject private var tabViews = TabsData()
    @StateObject private var topicsData = TopicsData()
    @StateObject private var moodsData = MoodsData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TabsData())
                .environmentObject(TopicsData())
                .environmentObject(MoodsData())
//                .environment(\.locale, .init(identifier: "uk"))
        }
    }
}
