//
//  ViewController.swift
//  TestProj
//
//  Created by Qyi Ren Yam on 22/09/2022.
//

import UIKit

struct ViewEntity {
    var color: UIColor?
    var weight: CGFloat = 0
    
    init() {
        
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var horizontalStackView: UIStackView!
    
    var viewEntityList: [[ViewEntity]] = [[ViewEntity]]()
    var viewArray: [UIView] = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupArray()
    }
    
    func setupArray() {
        //First
        var firstView = ViewEntity()
      firstView.weight = 0.1
        firstView.color = .red
        
        var secondView = ViewEntity()
      secondView.weight = 0.7
        secondView.color = .orange
      
      var secondView2 = ViewEntity()
    secondView2.weight = 0.3
      secondView2.color = .purple
        
        let array1 = [firstView, secondView, secondView2]
        viewEntityList.append(array1)
        
        //Second
        var thirdView = ViewEntity()
      thirdView.weight = 0.2
        thirdView.color = .yellow
        
        var fourthView = ViewEntity()
      fourthView.weight = 0.3
        fourthView.color = .green
        
        let array2 = [thirdView, fourthView]
        viewEntityList.append(array2)
        
        //Third
        var fifthView = ViewEntity()
      fifthView.weight = 0.4
        fifthView.color = .systemPink
        
        var sixthView = ViewEntity()
      sixthView.weight = 0.1
        sixthView.color = .gray
        
        let array3 = [fifthView, sixthView]
        viewEntityList.append(array3)
        
        //Fourth
        var seventhView = ViewEntity()
      seventhView.weight = 0.8
        seventhView.color = .magenta
        
        var eighthView = ViewEntity()
      eighthView.weight = 0.9
        eighthView.color = .cyan
      
      var eighthView2 = ViewEntity()
    eighthView2.weight = 0.5
      eighthView2.color = .cyan
        
        let array4 = [seventhView, eighthView, eighthView2]
        viewEntityList.append(array4)
        
        setupStack()
    }

    func setupStack() {
        for entity in viewEntityList {
            let verticalStackView = UIStackView()
            verticalStackView.axis = .horizontal
          verticalStackView.distribution = .fill
          verticalStackView.translatesAutoresizingMaskIntoConstraints = false
            
            for view in entity {
                let colorView = UIView()
                colorView.backgroundColor = view.color
                colorView.translatesAutoresizingMaskIntoConstraints = false
                
                let label = UILabel()
                label.translatesAutoresizingMaskIntoConstraints = false
                label.text = "\(view.weight)"
                label.textColor = .black
                
                verticalStackView.addArrangedSubview(colorView)
                
                colorView.addSubview(label)
                label.leadingAnchor.constraint(equalTo: colorView.leadingAnchor, constant: 0).isActive = true
                label.trailingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: 0).isActive = true
                label.topAnchor.constraint(equalTo: colorView.topAnchor, constant: 0).isActive = true
                label.bottomAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 0).isActive = true
              
              colorView.widthAnchor.constraint(equalTo: verticalStackView.widthAnchor, multiplier: view.weight).isActive = true
            }
//
            horizontalStackView.addArrangedSubview(verticalStackView)
//
        }
        
    }
}

