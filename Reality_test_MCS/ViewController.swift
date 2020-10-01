//
//  ViewController.swift
//  Reality_test_MCS
//
//  Created by Nikita Gulin on 01.10.2020.
//

import ARKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let configuration = ARFaceTrackingConfiguration()
        arView.session.run(configuration)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Webinar.loadScene()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
