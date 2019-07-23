//
//  AvatarGroupView+Rx.swift
//  AvatarGroup
//
//  Created by Meng Li on 2019/07/23.
//  Copyright © 2018 XFLAG. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import RxCocoa
import RxSwift

extension Reactive where Base: AvatarGroupView {
    
    var spacing: Binder<CGFloat> {
        return Binder(base) { view, spacing in
            view.spacing = spacing
        }
    }
    
    var reverse: Binder<Bool> {
        return Binder(base) { view, reverse in
            view.reverse = reverse
        }
    }
    
    var borderColor: Binder<UIColor> {
        return Binder(base) { view, borderColor in
            view.borderColor = borderColor
        }
    }
    
    var borderWidth: Binder<CGFloat> {
        return Binder(base) { view, borderWidth in
            view.borderWidth = borderWidth
        }
    }
    
    var alignment: Binder<AvatarGroupView.Alignment> {
        return Binder(base) { view, alignment in
            view.alignment = alignment
        }
    }
    
    var images: Binder<[UIImage?]> {
        return Binder(base) { view, images in
            view.setAvatars(images: images)
        }
    }
    
}
