import SwiftUI

struct ProfileStats: View {
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

struct ProfileStats_Previews: PreviewProvider {
    static var previews: some View {
        ProfileStats(name: "Posts", stats: 601)
    }
}
