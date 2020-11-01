//
//  PickerViewTestVC.swift
//  27th_iOS_seminar_week03
//
//  Created by inae Lee on 2020/10/31.
//

import UIKit

class PickerViewTestVC: UINavigationController {
    @IBOutlet weak var partImageView: UIImageView!
    @IBOutlet weak var partNameLabel: UILabel!
    @IBOutlet weak var partPickerView: UIPickerView!
    
    var parts: [Part] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPartData()
        initLayout()
        
        partPickerView.delegate = self
        partPickerView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func setPartData() {
        parts.append(contentsOf: [
        Part(imageName: "plan", partName: "Plan"), Part(imageName: "design", partName: "Design"), Part(imageName: "server", partName: "Server"), Part(imageName: "ios", partName: "iOS"), Part(imageName: "android", partName: "Android"), Part(imageName: "web", partName: "Web")
    ]) }
    
    func initLayout() {
        let initPart = parts[0]
        partImageView.image = initPart.makeImage()
        partNameLabel.text = initPart.partName
    }

}

extension PickerViewTestVC: UIPickerViewDataSource {
    // 컴포넌트의 개수 리턴
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 컴포넌트의 행의 개수를 알려주는 함수 (컴포넌트마다 몇 개의 행을 가지고 있는지)
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
