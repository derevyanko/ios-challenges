import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Background()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    SearchPanel()
                    
                    Mood()
                    
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
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(TabViewsData())
            .environmentObject(TopicsData())
            .environmentObject(MoodsData())
            .environment(\.locale, .init(identifier: "uk"))
    }
}
