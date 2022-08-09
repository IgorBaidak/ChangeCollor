//
//  FirstScreenVC.swift
//  ChangeCollor
//
//  Created by Igor Baidak on 9.08.22.
//

import UIKit

protocol CollorUpdateProtocol {
    func onCollorUpdate(color: UIColor)
}

class FirstScreenVC: UIViewController {

    @IBOutlet var superView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
