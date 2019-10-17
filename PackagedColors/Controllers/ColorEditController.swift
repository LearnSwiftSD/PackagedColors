//
//  ColorEditController.swift
//  DiffableColors
//
//  Created by Stephen Martinez on 9/14/19.
//  Copyright © 2019 Stephen Martinez. All rights reserved.
//

import UIKit

class ColorEditController: ColorController {
    
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpWithExistingColor()
    }
    
    func setUpWithExistingColor(){
        guard let color = existingFav?.color else { return }
        nameField.text = existingFav?.name
        
        redSlider.setValue(color.float.red, animated: false)
        greenSlider.setValue(color.float.green, animated: false)
        blueSlider.setValue(color.float.blue, animated: false)
        
        hexValueLabel.text = color.hex
        redValue.text = "\(color.red)"
        greenValue.text = "\(color.green)"
        blueValue.text = "\(color.blue)"
    }
    
    @IBAction func editColor(_ sender: Any) {

        defer { navigationController?.popViewController(animated: true) }
        guard var newFav = existingFav else { return }
        
        let newColor = Color.Values(
            red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value
        )
        
        newFav.color = newColor
        newFav.name = nameField.text
        colorStore.update(newFav)
    }
    
    @IBAction func deleteColor(_ sender: Any) {
        defer { navigationController?.popViewController(animated: true) }
        guard let existingFav = existingFav else { return }
        colorStore.delete(existingFav)
    }
    
    override func setUpStyle() {
        super.setUpStyle()
        deleteButton.layer.cornerRadius = 10
        deleteButton.layer.borderColor = UIColor.red.cgColor
        deleteButton.layer.borderWidth = 2.5
    }
    
}

extension ColorEditController: StoryOnboardable {
    
    static func create(with color: FavColor) -> ColorEditController {
        let colorEditController = ColorEditController.create()
        colorEditController.existingFav = color
        return colorEditController
    }
    
}
