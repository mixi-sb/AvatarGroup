//
//  ViewController.swift
//  AvatarGroup
//
//  Created by Meng Li on 05/23/2019.
//  Copyright (c) 2019 XFLAG. All rights reserved.
//

import UIKit
import AvatarGroup
import SnapKit

class ViewController: UIViewController {
    
    private lazy var avatarGroupView = AvatarGroupView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(avatarGroupView)
        avatarGroupView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.size.equalTo(CGSize(width: 300, height: 50))
        }
    }

}

