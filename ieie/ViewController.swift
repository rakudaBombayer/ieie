//
//  ViewController.swift
//  ieie
//
//  Created by  ooie fumiya on 2023/09/09.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBAction func upload(_ sender: Any) {
        let storage = Storage.storage()
        let reference = storage.reference(forURL: "gs://ieie-69181.appspot.com")
        
        let child = reference.child("upload.png")
        let data = UIImage(named: "uchidenokoduchi_eto01_nedumi")!.pngData()!
        
        child.putData(data, metadata: nil){ (metadata,nil) in
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

