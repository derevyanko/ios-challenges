import SwiftUI

@main
struct InstagramApp: App {
    @EnvironmentObject var tabsData: TabsData
    @EnvironmentObject var postsData: PostsData
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TabsData())
                .environmentObject(PostsData())
        }
    }
}
