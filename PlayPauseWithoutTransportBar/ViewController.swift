import UIKit
import AVKit

class ViewController: UIViewController {
    
    private var playerViewController: AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        play(stream: URL(string: "https://demo-hls5-live.zahs.tv/sd/master.m3u8?timeshift=3600")!)
    }
    
    // MARK: - Private
    
    private func setUpView() {
        playerViewController = AVPlayerViewController()
        playerViewController.view.frame = view.bounds
        playerViewController.playbackControlsIncludeTransportBar = false
        addChild(playerViewController)
        view.addSubview(playerViewController.view)
    }
    
    private func play(stream: URL) {
        let asset = AVAsset(url: stream)
        let playetItem = AVPlayerItem(asset: asset)
        playerViewController.player = AVPlayer(playerItem: playetItem)
        playerViewController.player?.play()
    }
}
