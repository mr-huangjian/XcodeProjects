//
//  LandmarkList.swift
//  Landmarks
//
//  Created by huangjian on 7/27/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    
    /**
     Use the @State property wrapper to mark a value as state, declare the property as private, and give it a default value.
     为视图创建状态: 使用@State属性包装器将值标记为状态，将属性声明为私有，并为其提供默认值。
     */
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmarks in
            (!showFavoritesOnly || landmarks.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            
            /*
            List(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
            */
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    /*
    static var previews: some View {
        // "iPhone SE (2nd generation)", "iPhone XS Max"
        
        ForEach(["iPhone SE (2nd generation)"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
    */
    
    // static var modelData = ModelData()
    static var previews: some View {
        /**
         passes data downward in the view hierarchy: environmentObject(_:)
         适用该方法，以便视图层次结构中更下方的视图可以读取通过环境向下传递的数据对象
         */
        LandmarkList()
            .environmentObject(ModelData())
    }
}
