//
//  UserMessageView.swift
//  ProfileView
//
//  Created by Sumit on 05/04/24.
//

import SwiftUI


 struct UserMessageView: View {
    
   var userMessageMVVM: UserMessageMVVM = UserMessageMVVM()
    
   var body: some View {
       
   ZStack {
     Color.init(cgColor: .init(red: 237.0/255, green: 237.0/255, blue: 237.0/255, alpha: 1.0)).ignoresSafeArea()
           VStack {
               HorizontalScrollViewListItemView(userMessageMVVM:userMessageMVVM)
               VerticalScrollViewListItemView(userMessageMVVM: userMessageMVVM)
             Spacer()
        }
     }
   }
 }


#Preview {
    UserMessageView()
}
