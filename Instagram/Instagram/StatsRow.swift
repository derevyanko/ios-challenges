import SwiftUI

struct StatsRow: View {
    var body: some View {
        HStack {
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
            
            Spacer()
            
            Stats(name: "Posts", stats: 601)
            
            Spacer()
            
            Stats(name: "Followers", stats: 99_800)
            
            Spacer()
            
            Stats(name: "Following", stats: 72)
        }
        .padding(.horizontal)
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
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow()
    }
}
