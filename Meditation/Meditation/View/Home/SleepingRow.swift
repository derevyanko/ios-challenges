import SwiftUI

struct SleepingRow: View {
    @State private var selectedButtonIndex = 0
    var categoriesSleeping = ["Sweet Sleep", "Insomnia", "Depressic", "Disorder"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(Array(categoriesSleeping.enumerated()), id: \.1) { index, sleeping in
                    Button(sleeping) {
                        selectedButtonIndex = index
                    }.padding()
                    .background(selectedButtonIndex == index ? Color.pink : Color.secondary)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding(.leading, 15)
                }
            }
        }
    }
}

struct SleepingRow_Previews: PreviewProvider {
    static var previews: some View {
        SleepingRow()
            .preferredColorScheme(.dark)
            
    }
}
