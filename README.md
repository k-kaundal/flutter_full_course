# flutter_full_course







## Animation
Animations (using code) are one of the things I’m not very fond of in Flutter code. It is setup and controlled in three parts.

## AnimationController: 
This manages the "Animation". It produces a new value for every frame that is rendered, keeps track of the animation state and exposes functionality to play (forward), reverse or stop an animation.

##Animation / Tween: 
This defines the begin and end values along with how to how move from the beginning to end through a curve. This object will notify the controller through the ValueListenable protocol whenever the value it holds has changed.

##Ticker: 
A ticker is a class that listens to frameCallback and calls a tick function that passes the elapsed duration between the current frame and the last frame to the ticker listener. In our case the controller.




##Example

##Cross Fade Animation

<img src="https://github.com/codelabs-live/flutter_full_course/blob/master/screenshorts/cross_fade_animation.png" height="300" />