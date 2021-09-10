import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ZStack {
                Background()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        SearchPanel()
                        
                        MoodView()
                        
                        DailyThought()
                    
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Featured")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.bottom)
                                .foregroundColor(.white)
                                .padding(.leading)
                            
                            Topics()
                        }
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(TabsData())
            .environmentObject(TopicsData())
            .environmentObject(MoodsData())
            .environment(\.locale, .init(identifier: "uk"))
    }
}
