#  AudioRecorder & Player

An Audio Recorder and Player built using AVFoundation and saves recording audio files via FileManager.

The View uses a @GestureState wrapper to persist the pressing state of the user and to check the drag value of the user.

It resets the value to zero when the user has stopped pressing on the screen.

The Player and Recorder View themselves use the 
```.averagePower()```
modifier to get the power input from the voice channel and use those to visualize a waveform of the audio.

![Simulator Screen Recording - iPhone 14 Pro - 2023-06-16 at 07 08 05](https://github.com/devdchaudhary/VoiceRecorder/assets/52855516/82a9408a-cec8-4559-a366-6608276f890e)
