//
//  Player.swift
//  Darly
//
//  Created by Magomed on 10.06.2023.
//

import SwiftUI
import AVFoundation

struct DarkPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView{
        return DarkPlayerUIView()
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}

struct LightPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView{
        return LightPlayerUIView()
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}

class LightPlayerUIView: UIView {
    private var resource: String = "lightLoading"
    private var playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let fileUrl = Bundle.main.url(forResource: resource, withExtension: "mov")!
        let playerItem = AVPlayerItem(url: fileUrl)
        
        let player = AVQueuePlayer(playerItem: playerItem)
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)

        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)
        
        player.play()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class DarkPlayerUIView: UIView {
    private var resource: String = "darkLoading"
    private var playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let fileUrl = Bundle.main.url(forResource: resource, withExtension: "mov")!
        let playerItem = AVPlayerItem(url: fileUrl)
        
        let player = AVQueuePlayer(playerItem: playerItem)
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)

        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)
        
        player.play()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


struct Player_Previews: PreviewProvider {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    static var previews: some View {
        DarkPlayer()
    }
}
