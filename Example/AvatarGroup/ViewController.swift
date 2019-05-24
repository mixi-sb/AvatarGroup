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
    
    @IBOutlet weak var avatarGroupView: AvatarGroupView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func add(_ sender: Any) {
        avatarGroupView.add(image: UIImage(named: "avatar\(avatarGroupView.count % 8).jpg"))
    }
    
    @IBAction func remove(_ sender: Any) {
        avatarGroupView.remove(at: Int.random(in: 0...(avatarGroupView.count - 1)))
    }
    
}

