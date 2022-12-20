//
//  ViewController.swift
//  AVPlayerDefault
//
//  Created by Avi Levin on 17/12/2022.
//

import UIKit
//AVKit helps you create interfaces for media playback. Its function is to help you create the UI for your video player so you can play a video. It has a built-in AV player that you can reference to load or play a video.
import AVKit
//AVFoundation helps you configure and manage the audio and video interactions within your UI
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "sample", ofType: "mp4") else {
            debugPrint("sample.mp4 not found")
            return
        }
        
        let player = AVPlayer(url: URL(filePath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        
        present(playerController, animated: true) {
            player.play()
        }
    }
}

