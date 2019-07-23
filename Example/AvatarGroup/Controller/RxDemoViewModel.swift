//
//  RxDemoViewModel.swift
//  AvatarGroup_Example
//
//  Created by Meng Li on 2019/07/23.
//  Copyright © 2019 XFALG. All rights reserved.
//

import RxCocoa
import RxSwift

class RxDemoViewModel {
    
    var avatars: Observable<[URL?]> {
        return .just((0...4).map { url(with: $0) })
    }
    
    private func url(with index: Int) -> URL? {
         return URL(string: "https://raw.githubusercontent.com/xflagstudio/AvatarGroup/master/Example/AvatarGroup/Avatars/avatar\(index).jpg")
    }
    
}
