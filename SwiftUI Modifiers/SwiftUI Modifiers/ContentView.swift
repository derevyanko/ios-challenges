//
//  ContentView.swift
//  SwiftUI Modifiers
//
//  Created by Christopher Ching on 2019-12-06.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isLiked = false
    @State private var likesCount = 10
    
    var body: some View {
        VStack {
            Image("pinkbuilding")
                .resizable()
                .cornerRadius(30)
                .padding()
                .shadow(radius: 10)
            
            Button(action: {
                self.isLiked.toggle()
                
                if self.isLiked {
                    self.likesCount += 1
                } else {
                    self.likesCount -= 1
                }
            }, label: {
                VStack {
                    HStack {
                        if self.isLiked {
                            ZStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundColor(.red)
                                
                                Image(systemName: "heart")
                                    .resizable()
                                    .foregroundColor(.black)
                            }
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                        } else {
                            Image(systemName: "heart")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 30, height: 30)
                        }
                        
                        Text(String(self.likesCount))
                    }
                    
                    if self.isLiked {
                        Text("This pink building is totally amazing!")
                            .fontWeight(.heavy)
                            .foregroundColor(.pink)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                    } else {
                        Text("This pink building is not so amazing!")
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                    }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
