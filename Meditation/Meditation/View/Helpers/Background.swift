import SwiftUI

struct Background: View {
    var body: some View {
        Rectangle()
            .edgesIgnoringSafeArea(.all)
            .foregroundColor(.deepBlue)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
