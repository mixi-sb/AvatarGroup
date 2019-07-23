//
//  DemoViewController.swift
//  AvatarGroup
//
//  Created by Meng Li on 05/23/2019.
//  Copyright (c) 2019 XFLAG. All rights reserved.
//

import UIKit
import AvatarGroup
import SnapKit

class DemoViewController: UIViewController {
    
    @IBOutlet weak var avatarGroupView: AvatarGroupView!
    
    private lazy var avatars = (0...4).map { url(with: $0) }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        avatarGroupView.setAvatars(urls: avatars)
    }

    @IBAction func add(_ sender: Any) {
        avatars.append(url(with: avatarGroupView.count % 8))
        avatarGroupView.setAvatars(urls: avatars)
    }
    
    @IBAction func remove(_ sender: Any) {
        avatars.remove(at: Int.random(in: 0...(avatars.count - 1)))
        avatarGroupView.setAvatars(urls: avatars)
    }
    
    @IBAction func reverse(_ sender: Any) {
        avatarGroupView.reverse = !avatarGroupView.reverse
    }
    
    @IBAction func changeAlignment(_ sender: UISegmentedControl) {
        avatarGroupView.alignment = AvatarGroupView.Alignment.allCases[sender.selectedSegmentIndex]
    }
    
    private func url(with index: Int) -> URL? {
        return URL(string: "https://raw.githubusercontent.com/xflagstudio/AvatarGroup/master/Example/AvatarGroup/Avatars/avatar\(index).jpg")
    }
    
}

