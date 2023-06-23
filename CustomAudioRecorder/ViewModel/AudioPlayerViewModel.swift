//
//  AudioPlayerViewModel.swift
//  VoiceRecorder
//
//  Created by devdchaudhary on 23/06/23.
//

import Foundation

extension AudioPlayerView {
    
    func playAudio() {
        audioPlayer.playSystemSound(soundID: 1306)
        audioPlayer.startPlayback(audio: audioUrl)
    }
    
    func stopPlaying() {
        audioPlayer.stopPlayback()
    }
    
}
