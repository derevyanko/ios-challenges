import SwiftUI

@main
struct MeditationApp: App {
    @StateObject private var tabViews = TabViewsData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TabViewsData())
        }
    }
}
