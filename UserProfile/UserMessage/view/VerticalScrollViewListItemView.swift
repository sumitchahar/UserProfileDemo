//
//  VerticalScrollViewListItemView.swift
//  ProfileView
//
//  Created by Sumit on 05/04/24.
//

import SwiftUI

struct VerticalScrollViewListItemView: View {
    
     var userMessageMVVM: UserMessageMVVM

    var body: some View {
        VStack {
            HStack {
                Text(userMessageMVVM.constantText.message)
                    .font(.footnote)
                    .fixedSize()
                Spacer()
            }
        }.padding([.leading])
        
        
      VStack {
             ScrollView(.vertical,showsIndicators: false) {
                 VStack(spacing: 10) {
                     ForEach(userMessageMVVM.listTabItems) { items in
                         
                         VStack {
                             HStack {
                                 Image(items.img)
                                     .resizable()
                                     .frame(width:64,height:64)
                                     .cornerRadius(64/2)
                                     .aspectRatio(contentMode: .fill)
                                 VStack(spacing:4) {
                                         HStack {
                                             Text(items.name)
                                             Spacer()
                                         }
                                         Text(items.details)
                                             .font(.caption)
                                     }
                               Spacer()
                                 
                             }.padding([.leading])
                         }
                         .frame(width: 350,height: 88)
                         .background(Color.white)
                         .cornerRadius(20)
                     }
                 }
             }.padding()
         }
    }
}

//#Preview {
//    VerticalScrollViewListItemView()
//}
