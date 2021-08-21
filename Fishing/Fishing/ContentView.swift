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
// 光标移至行首的快捷键：Command + 左箭头
// 光标移至行尾的快捷键：Command + 右箭头
// 预览的快捷键：Command + Option + P
// 更多的快捷键 Xcode/Editor/Structure

struct ContentView: View {
    @State private var alertVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            VStack {
                Text("🎣🎣🎣\n让鱼竿尽可能接近鱼")
                    .bold()
                    .font(.footnote) // .font(.system(size: 30))
                    .kerning(2.0)
                    .lineSpacing(5.0)
                    .multilineTextAlignment(.center)
                Text("\(Int(sliderValue))米")
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            HStack {
                Text("1米")
                    .bold()
                Slider(value: $sliderValue, in: 1.0 ... 100.0)
                Text("100米")
                    .bold()
            }
            
            Button(action: {
                alertVisible.toggle()
            }) {
                Text("点我")
            }
            .alert(isPresented: $alertVisible, content: {
                Alert(title: Text("滑块值"), message: Text("\(Int(sliderValue))"), dismissButton: .default(Text("确定").foregroundColor(.red), action: {
                    
                }))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .extraLarge)
        
        ContentView()
            .previewLayout(PreviewLayout.fixed(width: 926, height: 428))
    }
}
