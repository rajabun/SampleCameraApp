//
//  ViewController.swift
//  SampleCameraApp
//
//  Created by Muhammad Rajab Priharsanto on 19/06/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var photoPreviewImageView: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnTakePhotoButton(_ sender: Any)
    {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        
        // .overCurrentContext allows for landscape and portrait mode
        imagePicker.modalPresentationStyle = .overCurrentContext
        
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        imagePicker.dismiss(animated: true, completion: nil)
        photoPreviewImageView.image = info[.originalImage] as? UIImage
    }
    
}


