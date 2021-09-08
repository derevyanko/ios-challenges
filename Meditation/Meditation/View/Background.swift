import SwiftUI

struct Background: View {
    var body: some View {
        Rectangle()
            .ignoresSafeArea()
            .foregroundColor(.deepBlue)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
