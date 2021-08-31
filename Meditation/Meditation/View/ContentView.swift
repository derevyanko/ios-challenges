import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.deepBlue)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                SearchPanel()
                    .padding()
                
                SleepingRow()
                    .listRowInsets(EdgeInsets())
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
