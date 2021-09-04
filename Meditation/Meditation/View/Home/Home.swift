import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.deepBlue)
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    SearchPanel()
                    
                    Mood()
                    
                    DailyThought()
                
                    Topics()
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
