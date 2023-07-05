//
//  AudioPlayerView.swift
//  CustomAudioRecorder
//
//  Created by devdchaudhary on 11/05/23.
//

import SwiftUI

struct AudioPlayerView: View {
    
    @StateObject var audioPlayer = AudioPlayer(numberOfSamples: 20)
    
    @State var audioUrl: URL
    @State var isPlaying = false
    
    @State private var timer: Timer?
    
    var fileName: String?
    
    var body: some View {
        
        HStack {
            
            if audioPlayer.isPlaying {
                
                Button(action: stopPlaying) {
                    Image(systemName: "stop.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(uiColor: .systemRed))
                }
                .buttonStyle(.plain)
                
            } else {
                
                Button(action: playAudio) {
                    Image(systemName: "play.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(uiColor: .systemGreen))
                }
                .buttonStyle(.plain)
                
            }
            
            ScrollViewReader { proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(audioPlayer.soundSamples, id: \.id) { level in
                            BarView(isRecording: false, sample: level)
                                .id(level)
                        }
                    }
                }
                .onChange(of: audioPlayer.soundSamples) { _ in
                    proxy.scrollTo(audioPlayer.soundSamples.last)
                }
            }
            
            Text(audioPlayer.currentTime.description)
                .font(.system(size: 18))
                .foregroundColor(.primaryText)
            
        }
        .padding()
        .padding(.vertical)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 1)
                .padding(.vertical)
            
        }
    }
}

struct AudioPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayerView(audioUrl: .init(filePath: ""))
    }
}
