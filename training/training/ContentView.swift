//
//  ContentView.swift
//  training
//
//  Created by Oleg Derevyanko on 17.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack(alignment: .top) {
                    Text("Hardcore\nAvo Test")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Image("Heart_health")
                }
                .padding(.horizontal)
                .background(
                    Image("TopGradient")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(height: 100)
                )

                Spacer()
                
//                Text("Energize with this healty and hearty breakfast")
//                    .font(.subheadline)
//                    .foregroundColor(Color.white)
//                    .padding(.bottom, 50)
//                    .background(
//                        Image("BottomGradient")
//                            .resizable()
//                            .edgesIgnoringSafeArea(.all)
//                            .frame(height: 200.0)
//                            .scaledToFill()
//                    )
                
                Image("BottomGradient")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(height: 100.0)
                    .overlay(
                        Text("Energize with this healty and hearty breakfast")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                        , alignment: .center)
            }
        }
        .background(
            Image("Breakfast")
                .resizable()
                .ignoresSafeArea()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
