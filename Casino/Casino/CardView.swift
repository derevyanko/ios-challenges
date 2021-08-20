//
//  CardView.swift
//  Casino
//
//  Created by Oleg Derevyanko on 19.08.2021.
//

import SwiftUI

struct CardView: View {
    @Binding var card: Card
    
    var body: some View {
        Image(card.fruitName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .background(card.backgroundColor.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Binding.constant(
            Card(fruitId: 0,
                fruitName: "apple",
                backgroundColor: Color.white
                )
            )
        )
    }
}
