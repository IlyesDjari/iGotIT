//
//  ViewController.swift
//  iGotit
//
//  Created by Ilyes Djari on 26/09/2022.
//

import UIKit
import VisionKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func bigCameraButton(_ sender: Any) {
        scanDocument()
    }
    @IBAction func cameraButton(_ sender: Any) {
        scanDocument()
    }
    private func scanDocument() {
        let scanner = VNDocumentCameraViewController()
        scanner.delegate = self
        self.present(scanner, animated: true, completion: nil)
    }

}


extension ViewController: VNDocumentCameraViewControllerDelegate {
    func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
        for pageNumber in 0..<scan.pageCount {
            let img = scan.imageOfPage(at: pageNumber)
            print(img)
            imageView.image = img
        }
        controller.dismiss(animated: true, completion: nil)
    }
}


