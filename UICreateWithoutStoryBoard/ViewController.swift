//
//  ViewController.swift
//  UICreateWithoutStoryBoard
//
//  Created by Semih Ekmen on 25.02.2023.
//


/*
UserInferface create without storyboard. That is alternative of other usage of creating app Views. You should learn how to create UI or components without storyboard.
In this App, we gonna see the switch button and regular button creating without storyboard.

 Check the comment line at the below.
 
 Tutorial is very simple:
    - create an variable which represent to your component. (Button swtich etc.)
    - in the viewDidLoad, set up your configurations. From here on, you need to @objc function and add your general view.
 
*/



import UIKit

class ViewController: UIViewController {
    let manuelSwitch:UISwitch = UISwitch(frame: CGRectMake(60, 120, 120, 120))                              //Creating your Component.
    let manuelButton:UIButton = UIButton(frame: CGRect(x: 60, y: 180, width: 200, height: 100))
    
    fileprivate func creatingSwitch() {
        manuelSwitch.addTarget(self, action: #selector(switchOnChanged(_ :)), for: UIControl.Event.valueChanged)    // addTarget=> you need to initialize your component in your view. In This reason, call this function and set up your
        manuelSwitch.setOn(false, animated: true)                                                                  // function behaviour.
        view.addSubview(manuelSwitch)                                                                             // we have initalized your button to general view.
    }
    
    private func creatingButton(){
        manuelButton.addTarget(self, action: #selector(buttonOnTap(_ :)), for: UIControl.Event.touchUpInside)                          // we have done same things,
        manuelButton.setTitle("Manuel Button", for: UIControl.State.normal)
        manuelButton.backgroundColor = .black
        manuelButton.tintColor = .white
        view.addSubview(manuelButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatingSwitch()       // in here, we have created 2 function that configure your buttons.
        creatingButton()
    }
    
    @objc func switchOnChanged(_ sender:UISwitch){
    }
    
    
    @objc func buttonOnTap(_ sender:UIButton){
        manuelSwitch.setOn(!manuelSwitch.isOn, animated: true)
        switchOnChanged(manuelSwitch)
    }
}

