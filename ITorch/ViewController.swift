//
//  ViewController.swift
//  ITorch
//
//  Created by Azat IOS on 07.08.17.
//  Copyright © 2017 azatech. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {



    @IBOutlet weak var btnImage: UIButton!
//    var flag = 0

    override func viewDidLoad() {
        super.viewDidLoad()

//        let image1 = UIImage(named: "lampOn.png") as UIImage!
//        self.btnImage.setImage(image1, for: .normal)
        func btn_Pressed(_ sender: UIButton) {

        let device = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)

            if (device?.hasTorch)! {
            do {
                try device?.lockForConfiguration()

                let image1 = UIImage(named: "lampOff2.png") as UIImage!
                btnImage.setImage(image1, for: .selected)

                let image2 = UIImage(named: "kubik.png") as UIImage!
                btnImage.setImage(image2, for: .selected)
//                print("3sdvhsui3")
//                print("4sdvpos4")

                device?.torchMode = device?.torchMode == AVCaptureTorchMode.on ? .off : .on
                device?.unlockForConfiguration()

                func name1() {
                    print("11")
                }


                func name2() {
                    print("22")
                }

            } catch {
                print(error)
            }
        }
    }
}



//
////                        let playButton  = UIImage(named: "lampOn.png") as UIImage!
//
//                        if AVCaptureTorchMode.on == AVCaptureTorchMode.on {
//                          print("11")
//                            let image1 = UIImage(named: "lampOn.png") as UIImage!
//                            self.btnImage.setImage(image1, for: .normal)
//
//         //                   playButton.setImage(UIImage(named: "lampOn.png"), for: .normal)
//
//                        } else if AVCaptureTorchMode.off == AVCaptureTorchMode.off {
////                            playButton.setImage(UIImage(named: "lampOff2.png"), for: .normal)
//                            print("22")
//                            let image2 = UIImage(named: "lampOff2.png") as UIImage!
//                            self.btnImage.setImage(image2, for: .normal)
//                        }
//                        device?.unlockForConfiguration()
//        
//                    } catch {
//                        print(error)
//                    }
//            }
//        }
//    }


//    @IBAction func actionTorch(_ sender: UIButton) {
//        let device = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
//
//        let playButton  = UIButton(type: .custom)
//
//
//        }




}
