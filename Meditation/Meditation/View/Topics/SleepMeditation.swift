import SwiftUI

struct SleepMeditation: View {
    var body: some View {
        ZStack {
            Background()
            
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "arrow.backward")
                        
                        Spacer()
                        
                        Image(systemName: "star.fill")
                    }.foregroundColor(.white)
                    .font(.title2)
                    .padding(.bottom, 32)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Sleep Meditation")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Best practice meditations")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }.padding(.bottom, 20)
                    
                    HStack {
                        Image(systemName: "headphones")
                            .resizable()
                            .frame(maxWidth: 32, maxHeight: 28)
                            .scaledToFit()
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text("Start")
                            .padding(.vertical, 12)
                            .padding(.horizontal, 20)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(16)
                            .frame(maxHeight: 52)
                    }.frame(height: 220, alignment: .bottom)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(12)
                    .padding(.bottom, 28)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Sleep music    •    45 min")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("Ease the mind into a restful night's sleep with these deep, amblent tones")
                            .foregroundColor(.gray)
                        
                        HStack {
                            Image(systemName: "star.fill")
                            Text("12,542 Saved")
                            
                            Spacer()
                            
                            Image(systemName: "headphones")
                            Text("43,453 Lestening")
                        }.foregroundColor(.white)
                    }.padding(.bottom, 28)
                    
                    Divider()
                        .background(Color.white)
                        .padding(.bottom, 32)
                    
                    VStack(alignment: .leading) {
                        Text("Related")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom)
                            .foregroundColor(.white)
                        
                        Topics()
                            .padding(.all, -20)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct SleepMeditation_Previews: PreviewProvider {
    static var previews: some View {
        SleepMeditation()
            .environmentObject(TopicsData())
    }
}
