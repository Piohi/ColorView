//
//  ViewController.swift
//  ColorView
//
//  Created by Anton Godunov on 02.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    private var redValue: CGFloat = 0.5
    private var greenValue: CGFloat = 0.5
    private var blueValue: CGFloat = 0.5
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var vievForColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        updateViewColor()
        vievForColor.layer.cornerRadius = vievForColor.frame.height / 4
    }
    
    private func setupSliders() {
        redSlider.minimumValue = 0
        greenSlider.minimumValue = 0
        blueSlider.minimumValue = 0
        redSlider.maximumValue = 1
        greenSlider.maximumValue = 1
        blueSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redValue = CGFloat(Float(redSlider.value) / Float(redSlider.maximumValue))
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        updateViewColor()
    }
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenValue = CGFloat(Float(greenSlider.value) / Float(greenSlider.maximumValue))
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        updateViewColor()
    }
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueValue = CGFloat(Float(blueSlider.value) / Float(blueSlider.maximumValue))
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
        updateViewColor()
    }
    
    func updateViewColor() {
        vievForColor.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
}

