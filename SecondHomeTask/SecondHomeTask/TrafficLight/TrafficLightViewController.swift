//
//  ViewController.swift
//  SecondHomeTask
//
//  Created by Sergey Runovich on 1.03.22.
//

import UIKit

class TrafficLightViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet private weak var redLightView: UIView!
    @IBOutlet private weak var yellowLightView: UIView!
    @IBOutlet private weak var greenLightView: UIView!

    @IBOutlet private weak var changeTrafficLightButton: UIButton!

    // MARK: - Private Properties
    private var count = 0

    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    // MARK: - IBActions
    @IBAction private func changeTrafficLightButtonAction(_ sender: UIButton) {
        changeTrafficLightButton.setTitle("Next", for: .normal)
        changeColor()
    }

    // MARK: - Public Properties
    func changeColor() {
        count += 1

        switch count {
        case 1:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        case 2:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        case 3:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            count = 0
        default: break
        }
    }

    // MARK: - Private Properties
    private func configureUI() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        changeTrafficLightButton.layer.cornerRadius = 12
    }
}
