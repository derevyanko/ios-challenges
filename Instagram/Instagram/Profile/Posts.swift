import SwiftUI

struct Posts: View {
    @EnvironmentObject var postsData: PostsData
    var postHeight = UIScreen.screenWidth / 3 - 4
    
    var body: some View {
        VStack(spacing: 2) {
            let postsCount = postsData.posts.count
            
            ForEach(0 ..< postsCount / 3) { rowIndex in
                HStack(spacing: 2) {
                    let startIndex = rowIndex * 3
                    let endIndex = min(startIndex + 3, postsCount)
                    
                    ForEach(startIndex ..< endIndex) { index in
                            postsData.posts[index].image
                                .resizable()
                                .scaledToFill()
                                .frame(height: postHeight, alignment: .center)
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
