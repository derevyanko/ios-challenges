import SwiftUI

struct TabView: View {
    @EnvironmentObject private var tabViews: TabViewsData
    
    var body: some View {
        HStack {
            ForEach(tabViews.tabItems, id: \.id) { tab in
                let isSelected = (tab.id == tabViews.selectedTabIndex)
                
                VStack {
                    Button(action: {
                        tabViews.selectedTabIndex = tab.id
                    }, label: {
                        tab.image
                            .resizable()
                    }).frame(width: 28, height: 28)
                    .scaledToFit()
                    .padding(12)
                    .background(isSelected ? Color.purple: Color.deepBlue)
                    .foregroundColor(isSelected ? .white : .gray)
                    .cornerRadius(16)
                    
                    Text(tab.name)
                        .foregroundColor(.white)
                }.frame(maxWidth: .infinity)
            }
        }.ignoresSafeArea()
        .padding(.vertical, 4)
        .background(Color.deepBlue)
        .background(
            Rectangle()
                .shadow(radius: 12)
        )
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
            .environmentObject(TabViewsData())
    }
}
