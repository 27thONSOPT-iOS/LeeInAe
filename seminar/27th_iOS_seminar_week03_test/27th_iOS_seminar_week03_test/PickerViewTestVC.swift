//
//  PickerViewTestVC.swift
//  27th_iOS_seminar_week03_test
//
//  Created by inae Lee on 2020/10/31.
//

import UIKit

class PickerViewTestVC: UIViewController {
    @IBOutlet weak var partImageView: UIImageView!
    @IBOutlet weak var partPickerView: UIPickerView!
    @IBOutlet weak var partNameLabel: UILabel!
    
    var parts: [Part] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPartData()
        initLayout()
        
        // 위임
        partPickerView.dataSource = self
        partPickerView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func initLayout() {
        let initPart = parts[0]
        
        partImageView.image = initPart.makeImage()
        partNameLabel.text = initPart.partName
    }
    
    func setPartData() {
        parts.append(contentsOf: [
            Part(imageName: "plan", partName: "Plan"), Part(imageName: "design", partName: "Design"), Part(imageName: "server", partName: "Server"), Part(imageName: "ios", partName: "iOS"), Part(imageName: "android", partName: "Android"), Part(imageName: "web", partName: "Web")
        ])
    }
}

extension PickerViewTestVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return parts.count
    }
}

extension PickerViewTestVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return parts[row].partName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectPart = parts[row]
        
        self.partImageView.image = selectPart.makeImage()
        self.partNameLabel.text = selectPart.partName
    }
}

