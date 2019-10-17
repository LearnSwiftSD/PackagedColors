//
//  ColorSaveController.swift
//  DiffableColors
//
//  Created by Stephen Martinez on 9/14/19.
//  Copyright © 2019 Stephen Martinez. All rights reserved.
//

import UIKit

class ColorSaveController: ColorController, StoryOnboardable {
    
    @IBAction func saveColor(_ sender: Any) {
        let color = FavColor(
            color: Color.Values(
                red: redSlider.value,
                green: greenSlider.value,
                blue: blueSlider.value),
            name: nameField.text
        )
        colorStore.save(color)
        navigationController?.popViewController(animated: true)
    }
    
}
