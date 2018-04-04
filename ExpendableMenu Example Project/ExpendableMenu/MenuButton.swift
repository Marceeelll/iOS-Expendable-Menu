//
//  MenuButton.swift
//  ExpendableMenu
//
//  Created by Marcel Hagmann on 03.04.18.
//  Copyright © 2018 Marcel Hagmann. All rights reserved.
//

import UIKit

public class MenuButton: UIButton, Expandable {
    public var expandingViewsMenu: [UIView] = []
    public var expandingViewsSpaceInDegree: CGFloat = 40.0
    public var backgroundView: UIView = UIView()
    public var backgroundViewColor: UIColor = UIColor.black.withAlphaComponent(0.3)
    public var isRunningAnimation: Bool = false
    public var isMenuExpanded: Bool = false
    public var startFromPoint: CGPoint?
    public var endAtPoint: CGPoint?
    public var expandingDirection: Direction = .left
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
