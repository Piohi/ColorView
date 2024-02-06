//
//  ViewController.swift
//  ColorView
//
//  Created by Anton Godunov on 02.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var vievForColor: UIView!
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        vievForColor.layer.cornerRadius = 15
        
        setColor()
        
        redSliderValue.text = string(from: redSlider)
        greenSliderValue.text = string(from: greenSlider)
        blueSliderValue.text = string(from: blueSlider)
    }
    
    private func setupSliders() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        switch sender {
        case redSlider:
            redSliderValue.text = string(from: redSlider)
        case greenSlider:
            greenSliderValue.text = string(from: greenSlider)
        default:
            blueSliderValue.text = string(from: blueSlider)
        }
        setColor()
    }
    
   
    private func setColor() {
        vievForColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

