import SwiftUI

struct Posts: View {
    @EnvironmentObject var postsData: PostsData
    var postSize = (UIScreen.screenWidth - 4) / 3
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            let postsCount = postsData.posts.count
            let rowCount = Int(ceil(Double(postsCount) / 3.0))
            
            ForEach(0 ..< rowCount) { rowIndex in
                HStack(spacing: 2) {
                    let startIndex = rowIndex * 3
                    let endIndex = min(startIndex + 3, postsCount)
                    
                    ForEach(startIndex ..< endIndex) { index in
                            postsData.posts[index].image
                                .resizable()
                                .scaledToFill()
                                .frame(width: postSize, height: postSize)
                                .clipped()
                    }
                }
            }
        }
    }
}

struct Posts_Previews: PreviewProvider {
    static var previews: some View {
        Posts()
            .environmentObject(PostsData())
    }
}
