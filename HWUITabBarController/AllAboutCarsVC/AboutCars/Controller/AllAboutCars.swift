//
//  InstructionViewController.swift
//  HWUITabBarController
//
//  Created by Nikita Moskalenko on 3/17/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

final class AllAboutCars: UIViewController {
    
    // MARK: - Private properties
    
    private var segmentController = UISegmentedControl()
    
    private let aboutAudi = UILabel()
    private let aboutBMW = UILabel()
    private let aboutMB = UILabel()
    private let aboutSaab = UILabel()
    private let aboutVolvo = UILabel()
    private let aboutVW = UILabel()
    
    private let logoImg = UIImageView()
    
    // MARK: - Constants
    
    private var logoImage = [UIImage(named: TextForProject.imgArray.Audi.marks),
                             UIImage(named: TextForProject.imgArray.BMW.marks),
                             UIImage(named: TextForProject.imgArray.MB.marks),
                             UIImage(named: TextForProject.imgArray.Saab.marks),
                             UIImage(named: TextForProject.imgArray.Volva.marks),
                             UIImage(named: TextForProject.imgArray.VW.marks)]
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        addSettingToImgView()
        addSettingToSegmentController()
        addLablesTOView(param: changeDataSegment())
    }
    
    // MARK: - Private methods
    
    private func addSettingToImgView() {
        logoImg.frame = CGRect(x: 110, y: 120, width: 100, height: 100)
        
        view.addSubview(logoImg)
    }
    
    private func addSettingToSegmentController() {
        segmentController = UISegmentedControl(items: [TextForProject.itemsForSegmentController.first.items,
                                                        TextForProject.itemsForSegmentController.second.items,
                                                        TextForProject.itemsForSegmentController.third.items,
                                                        TextForProject.itemsForSegmentController.fourth.items,
                                                        TextForProject.itemsForSegmentController.fivth.items,
                                                        TextForProject.itemsForSegmentController.sixth.items])
        segmentController.frame  = CGRect(x: 70, y: 70, width: 180, height: 30)
        segmentController.backgroundColor = .lightGray
        segmentController.selectedSegmentTintColor = .darkGray
        segmentController.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.green], for: .normal)
        segmentController.addTarget(self, action: #selector(changeDataSegment), for: .valueChanged)
        
        view.addSubview(segmentController)
    }
    
    @objc
    private func changeDataSegment() -> UILabel {
        
        let item = segmentController.selectedSegmentIndex
        logoImg.image = logoImage[item] // зависимость от выбранного сегмента к массиву логотипов
        
        let labelsArray = [aboutAudi, aboutBMW, aboutMB, aboutSaab, aboutVolvo, aboutVW] //массив лейблов
        let selectedLabel = labelsArray[item] // устанавливаем лейбл в зависимости от выбранной картинки
        let textAboutCars = [TextForProject.allAboutCars.aboutAudi.text, //массив текстов для лейблов
                            TextForProject.allAboutCars.aboutBMV.text,
                            TextForProject.allAboutCars.aboutMB.text,
                            TextForProject.allAboutCars.aboutSaab.text,
                            TextForProject.allAboutCars.aboutVolvo.text,
                            TextForProject.allAboutCars.aboutVW.text]
        selectedLabel.text = textAboutCars[item] //выбираем соответствующий текст для картинки
        
        return selectedLabel
    }
    
    private func addLablesTOView(param: UILabel) {
        param.frame = CGRect(x: 220, y: 50, width: 300, height: 700)
        
        view.addSubview(param)
    }
}
