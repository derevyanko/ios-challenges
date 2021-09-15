import SwiftUI

struct Tabs: View {
    @EnvironmentObject var tabsData: TabsData
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(tabsData.tabs, id: \.id) { tab in
                let isSelected = (tabsData.selectedTabIndex == tab.id)
                
                VStack {
                    Button(action: {
                        tabsData.selectedTabIndex = tab.id
                    }, label: {
                        tab.image
                            .frame(maxWidth: .infinity)
                            .foregroundColor(isSelected ? .black : .gray)
                    })
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(isSelected ? .black : .white)
                }
            }
        }
        .padding(.bottom, -10)
        .font(.title2)
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
            .environmentObject(TabsData())
    }
}
