import UIKit
import AVFoundation

class PhotoViewController:UIViewController {

    @IBOutlet weak var img: UIImageView!
    var photo:Photo!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
    }
    
    override init()
    {
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = UIImage(data: photo.photo)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @IBAction func buttonSubmitClicked(sender: UIButton) {
        var mySpeechSynthesizer:AVSpeechSynthesizer = AVSpeechSynthesizer()
        var mySpeechUtterance:AVSpeechUtterance = AVSpeechUtterance(string: photo.voice)
        mySpeechUtterance.pitchMultiplier = photo.pitch.floatValue
        mySpeechSynthesizer.speakUtterance(mySpeechUtterance)
    }
    
}