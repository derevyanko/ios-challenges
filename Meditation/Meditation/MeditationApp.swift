import SwiftUI

@main
struct MeditationApp: App {
    @StateObject private var tabViews = TabViews()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TabViews())
        }
    }
}
