// 1. Import AVFoundation
// 2. Add AVAudioPlayer Delegate at class declaration
// 3. Create AVAudioPlayer node
// 4. Create sound url link
// 5. Do…Catch statement for error handleing
// 6. Play Audio

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioRecorderDelegate {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
}
