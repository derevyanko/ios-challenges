//
//  CardView.swift
//  Casino
//
//  Created by Oleg Derevyanko on 19.08.2021.
//

import SwiftUI

struct CardView: View {
    @Binding var fruitName: String
    
    var body: some View {
        Image(fruitName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruitName: Binding.constant("apple"))
    }
}
