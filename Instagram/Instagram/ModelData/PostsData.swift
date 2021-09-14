import SwiftUI

final class PostsData: ObservableObject {
    var posts = [
        PostData(id: 0,
                 image: Image("intermediate_dev"),
                 text: ""
        ),
        PostData(id: 1,
                 image: Image("kmm"),
                 text: ""
        ),
        PostData(id: 2,
                 image: Image("learn_coding_fast"),
                 text: ""
        ),
        PostData(id: 3,
                 image: Image("master_logical_thinking"),
                 text: ""
        ),
        PostData(id: 4,
                 image: Image("multiple_languages"),
                 text: ""
        )
//        PostData(id: 5,
//                 image: Image("bad_habits")
//                    .resizable(),
//                 text: ""
//        )
    ]
}

struct PostData: Identifiable {
    var id: Int
    var image: Image
    var text: String
}
