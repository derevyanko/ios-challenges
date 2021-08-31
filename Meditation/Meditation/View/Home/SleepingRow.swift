import SwiftUI

struct SleepingRow: View {
    var categoriesSleeping = ["Sweet Sleep", "Insomnia", "Depressic", "Disorder"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(categoriesSleeping, id: \.self) { sleeping in
                    Text(sleeping)
                        .padding()
                        .background(Color.secondary)
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
