import SwiftUI

@main
struct InstagramApp: App {
    @EnvironmentObject var tabsData: TabsData
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TabsData())
        }
    }
}
