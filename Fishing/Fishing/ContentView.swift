//
//  ContentView.swift
//  Fishing
//
//  Created by mr.huangjian on 2021/7/27.
//

import SwiftUI

// 显示表情和符号的快捷键：Command + Ctrl + 空格
// 向上移动代码的快捷键：Command + Option + [
// 向下移动代码的快捷键：Command + Option + ]
// 更多的快捷键 Xcode/Editor/Structure

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("🎣🎣🎣\n让鱼竿尽可能接近鱼")
                    .bold()
                    .font(.footnote)
                    .kerning(2.0)
                    .lineSpacing(5.0)
                    .multilineTextAlignment(.center)
                Text("89米")
            }
            HStack {
                Text("1米")
                Slider(value: .constant(50), in: 1.0 ... 100.0)
                Text("100米")
            }
            Button(action: {
                
            }) {
                Text("点我")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .extraLarge)
        
//        ContentView()
//            .previewLayout(PreviewLayout.fixed(width: 926, height: 428))
    }
}
