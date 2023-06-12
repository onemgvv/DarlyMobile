//
//  RouteView.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct RouteView: View {
    @State var title: String = "Title"
    @State var subtitle: String = "Description"
    
    var body: some View {
            VStack(alignment: .leading) {
                Image("sulakwater")
                    .resizable()
                    .frame(height: 200)
                    .padding(.bottom, 10)
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.custom("Poppins-SemiBold", size: 24))
                    Text(subtitle)
                        .font(.custom("Poppins-Medium", size: 20))
                }
                .padding(.horizontal, 30)
                
                Divider()
                    .padding(.bottom, 5)
                ScrollView(showsIndicators: false) {
                    VStack {
                        AppText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis cursus in hac habitasse platea. Gravida neque convallis a cras. Congue quisque egestas diam in arcu cursus euismod. Ac turpis egestas maecenas pharetra convallis posuere. Purus ut faucibus pulvinar elementum. Egestas diam in arcu cursus. Urna nunc id cursus metus aliquam eleifend mi in. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Commodo elit at imperdiet dui accumsan sit. Sed sed risus pretium quam. Id faucibus nisl tincidunt eget nullam non nisi. Sed viverra tellus in hac.")
                        
                        AppText(text: "A arcu cursus vitae congue mauris. A erat nam at lectus. Nulla aliquet enim tortor at auctor urna nunc id cursus. Cras tincidunt lobortis feugiat vivamus at augue eget. Sagittis eu volutpat odio facilisis mauris. Ac turpis egestas sed tempus. Mi bibendum neque egestas congue. Nec tincidunt praesent semper feugiat. In pellentesque massa placerat duis ultricies lacus. Vestibulum sed arcu non odio euismod lacinia at quis risus. Imperdiet proin fermentum leo vel orci porta non.")
                        
                        AppText(text: "Morbi quis commodo odio aenean sed adipiscing diam. Consequat nisl vel pretium lectus quam id leo in vitae. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Egestas purus viverra accumsan in nisl nisi scelerisque eu. Molestie at elementum eu facilisis sed odio morbi. Accumsan sit amet nulla facilisi morbi tempus iaculis urna id. Nibh cras pulvinar mattis nunc sed blandit libero volutpat. Ut tortor pretium viverra suspendisse potenti. Mattis nunc sed blandit libero volutpat. Condimentum mattis pellentesque id nibh tortor id aliquet. Placerat vestibulum lectus mauris ultrices eros in cursus turpis. Nulla at volutpat diam ut. Aliquet nibh praesent tristique magna sit amet purus gravida quis. Enim diam vulputate ut pharetra sit amet aliquam. Purus semper eget duis at tellus at urna condimentum. At imperdiet dui accumsan sit amet nulla facilisi morbi tempus. Nisl vel pretium lectus quam id leo. Sit amet commodo nulla facilisi. Platea dictumst quisque sagittis purus sit.")
                        
                        AppText(text: "Venenatis cras sed felis eget velit aliquet sagittis. Leo vel orci porta non pulvinar neque. Amet cursus sit amet dictum sit amet. Ac tincidunt vitae semper quis lectus nulla at volutpat diam. Eget nulla facilisi etiam dignissim diam quis enim. Eros in cursus turpis massa. Diam vel quam elementum pulvinar etiam non quam lacus. Ultrices dui sapien eget mi proin. Lacus sed viverra tellus in. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet. Malesuada fames ac turpis egestas sed tempus urna et. Ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis. Sed euismod nisi porta lorem mollis aliquam ut porttitor. Purus non enim praesent elementum facilisis leo vel fringilla. Facilisis gravida neque convallis a cras. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Orci sagittis eu volutpat odio facilisis mauris sit. Fermentum odio eu feugiat pretium nibh ipsum consequat. Lorem ipsum dolor sit amet consectetur adipiscing elit duis tristique.")
                        
                        AppText(text: "Pulvinar sapien et ligula ullamcorper malesuada proin libero. Netus et malesuada fames ac turpis. Adipiscing tristique risus nec feugiat in. Habitasse platea dictumst vestibulum rhoncus. Habitant morbi tristique senectus et netus et malesuada fames ac. A pellentesque sit amet porttitor eget dolor morbi non. Tincidunt arcu non sodales neque sodales ut. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Posuere lorem ipsum dolor sit. Dictumst quisque sagittis purus sit amet volutpat. Eu augue ut lectus arcu bibendum at varius vel pharetra. Nulla facilisi cras fermentum odio eu feugiat pretium nibh ipsum. Commodo elit at imperdiet dui accumsan. Malesuada fames ac turpis egestas. At consectetur lorem donec massa sapien faucibus et molestie ac. Leo in vitae turpis massa sed. Sed vulputate mi sit amet mauris commodo quis imperdiet. Lobortis elementum nibh tellus molestie nunc non. Vitae congue mauris rhoncus aenean vel elit. Ultrices eros in cursus turpis massa tincidunt.")
                    }
                }
                .padding(.horizontal, 30)
                Spacer()
        }
        .navigationTitle(title)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton())
        .safeAreaInset(edge: .bottom) {
            AppButton(
                title: "Cохранить",
                titleSize: 18,
                titleFont: "MavenPro-SemiBold",
                cornerRadius: 10,
                horizontalPadding: 30
            ).padding(.top, 5)
        }
    }
}

struct AppText: View {
    @State var text: String
    
    var body: some View {
        Text(text)
            .font(.custom("Poppins-Regular", size: 14))
            .padding(.bottom, 10)
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
