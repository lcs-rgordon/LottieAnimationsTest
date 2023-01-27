//
//  AnimationsListView.swift
//  LottieAnimationsTest
//
//  Created by Russell Gordon on 2023-01-27.
//

import SwiftUI

struct AnimationsListView: View {
    var body: some View {
        List(favourites) { favourite in
            
            NavigationLink(destination: {
                LottieView(animationNamed: favourite.fileName)
            }, label: {
                Text(favourite.description)
            })
            
        }
        .navigationTitle("Useful Animations")
    }
}

struct AnimationsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnimationsListView()
        }
    }
}
