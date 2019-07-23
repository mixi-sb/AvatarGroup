//
//  RxDemoViewController.swift
//  AvatarGroup_Example
//
//  Created by Meng Li on 2019/07/23.
//  Copyright © 2019 XFALG. All rights reserved.
//

import UIKit
import SnapKit
import AvatarGroup
import RxSwift

class RxDemoViewController: UIViewController {
    
    private lazy var avatarGroupView: AvatarGroupView = {
        let avatarGroupView = AvatarGroupView()
        avatarGroupView.spacing = 10
        avatarGroupView.alignment = .right
        return avatarGroupView
    }()
    
    private let viewModel = RxDemoViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(avatarGroupView)
        createConstraints()
        
        viewModel.avatars.bind(to: avatarGroupView.rx.urls).disposed(by: disposeBag)
    }
    
    private func createConstraints() {
        avatarGroupView.snp.makeConstraints {
            $0.width.equalToSuperview().multipliedBy(0.8)
            $0.height.equalTo(50)
            $0.center.equalToSuperview()
        }
    }
    
}
