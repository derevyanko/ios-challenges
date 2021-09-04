import SwiftUI

struct TabView: View {
    @EnvironmentObject private var tabViews: TabViews
    
    var body: some View {
        HStack {
            ForEach(tabViews.tabItems, id: \.id) { tab in
                let isSelected = (tab.id == tabViews.selectedTabIndex)
                
                VStack {
                    Button(action: {
                        tabViews.selectedTabIndex = tab.id
                    }, label: {
                        Image(systemName: tab.imageName )
                    }).frame(width: 30, height: 30)
                    .scaledToFit()
                    .padding(10)
                    .background(isSelected ? Color.purple: Color.deepBlue)
                    .foregroundColor(isSelected ? .white : .gray)
                    .cornerRadius(15)
                    
                    Text(tab.name)
                }.frame(minWidth: 50, maxWidth: 80, minHeight: 50, maxHeight: 80)
            }
        }.ignoresSafeArea()
        .background(Color.deepBlue)
        .foregroundColor(.white)
        .background(
            Rectangle()
                .shadow(radius: 10)
        )
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
            .environmentObject(TabViews())
    }
}
