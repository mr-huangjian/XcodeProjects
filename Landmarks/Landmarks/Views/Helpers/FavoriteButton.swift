//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by huangjian on 7/27/21.
//

import SwiftUI

struct FavoriteButton: View {
    /**
     It’s a value and a way to change that value.
     A binding controls the storage for a value, so you can pass data around to different views that need to read or write it.
     绑定控制值的存储，因此您可以将数据传递到需要读取或写入它的不同视图。
     */
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            if (isSet) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
