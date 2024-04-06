//
//  HorizontalScrollViewListItemView.swift
//  ProfileView
//
//  Created by Sumit on 05/04/24.
//

 import SwiftUI


 struct HorizontalScrollViewListItemView: View {
   
    var userMessageMVVM: UserMessageMVVM

     
   var body: some View {
       HStack {
           VStack(spacing:7) {
               Text(userMessageMVVM.constantText.message)
                   .font(.headline)
                   .bold()
               Text(userMessageMVVM.constantText.contacts)
                   .font(.footnote)
                   .fixedSize()
           }
           Spacer()
       }.padding([.leading,.bottom])
       
       VStack {
           ScrollView(.horizontal,showsIndicators: false) {
               HStack(spacing: 10) {
                   ForEach(userMessageMVVM.listTabItems) { items in
                       Image(items.img)
                           .resizable()
                           .frame(width:80,height:80)
                           .cornerRadius(80/2)
                           .aspectRatio(contentMode: .fill)
                       
                   }
               }
           }
       }.padding([.leading,.bottom])

   }
   
 }

// #Preview {
//     //HorizontalScrollViewListItemView(listTabItems:[ListTabItems])
// }
