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

        avatarGroupView.add(images: (0...4).map { image(with: $0) })
    }

    @IBAction func add(_ sender: Any) {
        avatarGroupView.add(image: image(with: avatarGroupView.count % 8))
    }
    
    @IBAction func remove(_ sender: Any) {
        avatarGroupView.remove(at: Int.random(in: 0...(avatarGroupView.count - 1)))
    }
    
    @IBAction func reverse(_ sender: Any) {
        avatarGroupView.reverse = !avatarGroupView.reverse
    }
    
    @IBAction func changeAlignment(_ sender: UISegmentedControl) {
        avatarGroupView.alignment = AvatarGroupView.Alignment.allCases[sender.selectedSegmentIndex]
    }
    
    private func image(with index: Int) -> UIImage? {
        return UIImage(named: "avatar\(index).jpg")
    }
    
}

