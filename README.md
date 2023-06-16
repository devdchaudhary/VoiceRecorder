#  AudioRecorder & Player

An Audio Recorder and Player built using AVFoundation and saves recording audio files via FileManager.

The View uses a @GestureState wrapper to persist the pressing state of the user and to check the drag value of the user.

It resets the value to zero when the user has stopped pressing on the screen.

The Player and Recorder View themselves use the 
```.averagePower()```
modifier to get the power input from the voice channel and use those to visualize a waveform of the audio.

https://github.com/devdchaudhary/VoiceRecorder/assets/52855516/57275c3a-a312-40f2-a760-b554d6eeb7d3

