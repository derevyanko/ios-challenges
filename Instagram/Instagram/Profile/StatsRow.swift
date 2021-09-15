import SwiftUI

struct StatsRow: View {
    var body: some View {
        HStack(spacing: 0) {
            Image("profile")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(2)
                .overlay(
                    Circle()
                        .stroke(Color.gray, lineWidth: 2)
                        .opacity(0.5)
                )
            
            Stats(name: "Posts", stats: 601)
            
            Stats(name: "Followers", stats: 99_800)
            
            Stats(name: "Following", stats: 72)
        }
        .padding(.horizontal, 12)
    }
}

struct Stats: View {
    var name: String
    var stats: Int
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(stats)")
                .fontWeight(.bold)
                .font(.title3)
            
            Text(name)
        }
        .frame(maxWidth: .infinity)
        .lineLimit(1)
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow()
    }
}
