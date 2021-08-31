import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.deepBlue)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    SearchPanel()
                        .padding()
                    
                    SleepingRow()
                        .listRowInsets(EdgeInsets())
                    
                    DailyThought()
                        .padding()
                
                    Topics()
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
