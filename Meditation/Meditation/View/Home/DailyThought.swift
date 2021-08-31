import SwiftUI

struct DailyThought: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Daily Thought")
                    .font(.title2)
                    .fontWeight(.medium)
                Text("Meditation • 3-10 min")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "play.circle.fill")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
        }
        .padding()
        .background(Color.teal700)
        .cornerRadius(10)
    }
}

struct DailyThought_Previews: PreviewProvider {
    static var previews: some View {
        DailyThought()
            .preferredColorScheme(.dark)
    }
}
