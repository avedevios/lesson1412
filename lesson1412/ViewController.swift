//
//  ViewController.swift
//  lesson1412
//
//  Created by ake11a on 2022-10-30.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    //MARK First flag
    private lazy var flag11View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .orange
        
        return view
    }()
    
    private lazy var flag12View: UIView = {
        let view = UIView()
       
        view.backgroundColor = .white
        
        return view
    }()
    
    private lazy var flag13View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .green
        
        return view
    }()
    
    private lazy var flag1CircleView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .orange
        view.clipsToBounds = true
        
        return view
    }()
    
    //MARK Second flag
    private lazy var flag2View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var flag21View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        
        return view
    }()
    
    private lazy var flag22View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        
        return view
    }()
    
    private lazy var flag23View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        
        return view
    }()
    
    private lazy var flag24View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        
        return view
    }()
    
    private lazy var flag2Rect11View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var flag2Rect12View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var flag2Rect21View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var flag2Rect22View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var flag2Rect31View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var flag2Rect32View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var flag2Rect41View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var flag2Rect42View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    //MARK Third flag
    
    private lazy var flag31View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
       
        return view
        
    }()
    
    private lazy var flag3RectInvisibleView: UIView = {
        let view = UIView()
       
        return view
        
    }()
    
    private lazy var flag3Rect1OutView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .lightGray
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.borderWidth = 2
       
        return view
        
    }()
    
    private lazy var flag3Rect2OutView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .lightGray
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.borderWidth = 2
       
        return view
        
    }()
    
    private lazy var flag3Rect1InView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .lightGray
       
        return view
        
    }()
    
    private lazy var flag3Rect2InView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .lightGray
       
        return view
   
    }()
    
    private lazy var flag3RectCenterView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .lightGray
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.borderWidth = 1
       
        return view
        
    }()
    
    private lazy var flag32View: UIView = {
        let view = UIView()
        
        view.backgroundColor = .red
       
        return view
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupSubviews()
    }

    private func setupSubviews() {
        
        let flagSize = view.frame.height / 3 - 10

        //MARK First flag
        
        view.addSubview(flag11View)
        flag11View.snp.makeConstraints{ make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(flagSize / 3)
        }
        
        view.addSubview(flag12View)
        flag12View.snp.makeConstraints{ make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(flag11View.snp.bottom)
            make.height.equalTo(flagSize / 3)
        }
        
        view.addSubview(flag1CircleView)
        let circleSize = flagSize / 3 * 0.75
        
        flag1CircleView.snp.makeConstraints{ make in
            make.center.equalTo(flag12View.snp.center)
            make.width.equalTo(circleSize)
            make.height.equalTo(circleSize)
        }
        
        flag1CircleView.layer.cornerRadius = circleSize / 2
        
        view.addSubview(flag13View)
        flag13View.snp.makeConstraints{ make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(flag12View.snp.bottom)
            make.height.equalTo(flagSize / 3)
        }
        
        //MARK Second flag
        
        let lineSize = flagSize * 0.1
        let widthRect = view.frame.width / 2 - lineSize
        let heightRect = flagSize / 2 - lineSize
        
        let cross1Height = lineSize * 2
        let cross1Width = cross1Height * 0.3
        
        view.addSubview(flag2View)
        flag2View.snp.makeConstraints{ make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(flag13View.snp.bottom).offset(15)
            make.height.equalTo(flagSize)
        }
 
        view.addSubview(flag21View)
        flag21View.snp.makeConstraints{ make in
            make.top.equalTo(flag2View.snp.top)
            make.left.equalTo(flag2View.snp.left)
            make.width.equalTo(widthRect)
            make.height.equalTo(heightRect)
        }
        
        view.addSubview(flag2Rect11View)
        flag2Rect11View.snp.makeConstraints{ make in
            make.center.equalTo(flag21View.snp.center)
            make.width.equalTo(cross1Width)
            make.height.equalTo(cross1Height)
        }
        
        view.addSubview(flag2Rect12View)
        flag2Rect12View.snp.makeConstraints{ make in
            make.center.equalTo(flag21View.snp.center)
            make.width.equalTo(cross1Height)
            make.height.equalTo(cross1Width)
        }
        
        view.addSubview(flag22View)
        flag22View.snp.makeConstraints{ make in
            make.top.equalTo(flag2View.snp.top)
            make.right.equalTo(flag2View.snp.right)
            make.width.equalTo(widthRect)
            make.height.equalTo(heightRect)
        }
       
        view.addSubview(flag2Rect21View)
        flag2Rect21View.snp.makeConstraints{ make in
            make.center.equalTo(flag22View.snp.center)
            make.width.equalTo(cross1Width)
            make.height.equalTo(cross1Height)
        }
        
        view.addSubview(flag2Rect22View)
        flag2Rect22View.snp.makeConstraints{ make in
            make.center.equalTo(flag22View.snp.center)
            make.width.equalTo(cross1Height)
            make.height.equalTo(cross1Width)
        }
        
        view.addSubview(flag23View)
        flag23View.snp.makeConstraints{ make in
            make.left.equalTo(flag2View.snp.left)
            make.bottom.equalTo(flag2View.snp.bottom)
            make.width.equalTo(widthRect)
            make.height.equalTo(heightRect)
        }
        
        view.addSubview(flag2Rect31View)
        flag2Rect31View.snp.makeConstraints{ make in
            make.center.equalTo(flag23View.snp.center)
            make.width.equalTo(cross1Width)
            make.height.equalTo(cross1Height)
        }
        
        view.addSubview(flag2Rect32View)
        flag2Rect32View.snp.makeConstraints{ make in
            make.center.equalTo(flag23View.snp.center)
            make.width.equalTo(cross1Height)
            make.height.equalTo(cross1Width)
        }
        
        view.addSubview(flag24View)
        flag24View.snp.makeConstraints{ make in
            make.right.equalTo(flag2View.snp.right)
            make.bottom.equalTo(flag2View.snp.bottom)
            make.width.equalTo(widthRect)
            make.height.equalTo(heightRect)
        }
        
        view.addSubview(flag2Rect41View)
        flag2Rect41View.snp.makeConstraints{ make in
            make.center.equalTo(flag24View.snp.center)
            make.width.equalTo(cross1Width)
            make.height.equalTo(cross1Height)
        }
        
        view.addSubview(flag2Rect42View)
        flag2Rect42View.snp.makeConstraints{ make in
            make.center.equalTo(flag24View.snp.center)
            make.width.equalTo(cross1Height)
            make.height.equalTo(cross1Width)
        }
        
        //MARK Third flag
        
        let cross2Height = flagSize / 4
        let cross2Width = cross2Height / 3
        
        let invisibleRectSize = flagSize / 3
        let centerRectSize = cross2Height / 2
        
        view.addSubview(flag31View)
        flag31View.snp.makeConstraints{ make in
            make.top.equalTo(flag2View.snp.bottom).offset(15)
            make.left.equalToSuperview()
            make.width.equalTo(view.frame.width / 2)
            make.height.equalTo(flagSize)
        }
        
        view.addSubview(flag3RectInvisibleView)
        flag3RectInvisibleView.snp.makeConstraints{ make in
            make.top.equalTo(flag31View.snp.top)
            make.left.equalTo(flag31View.snp.left)
            make.width.equalTo(invisibleRectSize)
            make.height.equalTo(invisibleRectSize)
        }
        
        view.addSubview(flag3Rect1OutView)
        flag3Rect1OutView.snp.makeConstraints{ make in
            make.center.equalTo(flag3RectInvisibleView)
            make.width.equalTo(cross2Width)
            make.height.equalTo(cross2Height)
        }
        
        view.addSubview(flag3Rect2OutView)
        flag3Rect2OutView.snp.makeConstraints{ make in
            make.center.equalTo(flag3RectInvisibleView)
            make.width.equalTo(cross2Height)
            make.height.equalTo(cross2Width)
        }
        
        view.addSubview(flag3RectCenterView)
        
        flag3RectCenterView.layer.cornerRadius = centerRectSize * 0.25
        flag3RectCenterView.snp.makeConstraints{ make in
            make.center.equalTo(flag3RectInvisibleView)
            make.width.equalTo(centerRectSize)
            make.height.equalTo(centerRectSize)
        }
        
        view.addSubview(flag3Rect1InView)
        flag3Rect1InView.snp.makeConstraints{ make in
            make.center.equalTo(flag3RectInvisibleView)
            make.width.equalTo(cross2Width - 4)
            make.height.equalTo(cross2Height - 4)
        }
        
        view.addSubview(flag3Rect2InView)
        flag3Rect2InView.snp.makeConstraints{ make in
            make.center.equalTo(flag3RectInvisibleView)
            make.width.equalTo(cross2Height - 4)
            make.height.equalTo(cross2Width - 4)
        }
        
        view.addSubview(flag32View)
        flag32View.snp.makeConstraints{ make in
            make.right.equalToSuperview()
            make.top.equalTo(flag2View.snp.bottom).offset(15)
            make.width.equalTo(view.frame.width / 2)
            make.height.equalTo(flagSize)
        }
    }

}

