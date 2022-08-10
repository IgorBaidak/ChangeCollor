//
//  FirstScreenVC.swift
//  ChangeCollor
//
//  Created by Igor Baidak on 9.08.22.
//

import UIKit


protocol CollorUpdate {
    func onCollorUpdate (collor: UIColor)
}


class FirstScreenVC: UIViewController, CollorUpdate {
    func onCollorUpdate(collor: UIColor) {
        superView.backgroundColor = collor
    }
    
    
    
    @IBOutlet var superView: UIView! { didSet {superView.backgroundColor = .clear }}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func changeBackgroundAction(_ sender: UIButton) {
        // получаем вью контроллер
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let changeCollorScreen = storyboard.instantiateViewController(withIdentifier:
        "ChangeCollorVC") as! ChangeCollorVC
        
        // передаем данные
        changeCollorScreen.collorLabelText = superView.backgroundColor
        
        // устанавливаем текущий класс в качестве делегата
        changeCollorScreen.delegate = self
        
        // делаем переход на следующий экран
        self.navigationController?.pushViewController(changeCollorScreen, animated: true)
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
