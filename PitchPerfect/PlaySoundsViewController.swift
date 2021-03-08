//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Maleina Bidek on 3/6/21.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    // MARK: Outlets

    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!

    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }

    // MARK: Actions

    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("Play Sound Button Pressed")
    }

    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        print("Stop Audio Button Pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        snailButton.contentMode = .center
        snailButton.imageView?.contentMode = .scaleAspectFit
        chipmunkButton.contentMode = .center
        chipmunkButton.imageView?.contentMode = .scaleAspectFit
        rabbitButton.contentMode = .center
        rabbitButton.imageView?.contentMode = .scaleAspectFit
        vaderButton.contentMode = .center
        vaderButton.imageView?.contentMode = .scaleAspectFit
        echoButton.contentMode = .center
        echoButton.imageView?.contentMode = .scaleAspectFit
        reverbButton.contentMode = .center
        reverbButton.imageView?.contentMode = .scaleAspectFit
        
        setupAudio()        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }

}
