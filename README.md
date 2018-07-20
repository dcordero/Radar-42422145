# Radar-694030

AVPlayerViewController without transportbar, seeks a few seconds backward

![](Preview.gif)

# Area
AV Playback

# Summary:

When playing a live stream with an instance of AVPlayerViewController with the property playbackControlsIncludeTransportBar set to "false", play-pausing seeks a few seconds backward.

# Steps to Reproduce:

A project reproducing this issue can be found attached to this radar.

1. Run the project
2. Press Pause using Siri Remote
3. Wait 1 second
3. Press Play using Siri Remote.

The player seeks automatically around 5 seconds backwards instead of continue playing smoothly from where it was pause.

Exactly the same project, with the same stream, works perfectly when setting the property `playbackControlsIncludeTransportBar` to "true".

# Expected Results:

Same behaviour as seen when transport bar is shown (playbackControlsIncludeTransportBar=true). That means, that the video can be paused and played smoothly without jumps also without OSD.

# Actual Results:

The player seeks backward around 5 seconds for no reason.

# Version/Build:
Xcode Version 10.0 beta 4 (10L213o)
tvOS 12.0 (16J5322d)
AppleTv 4th Generation

# Configuration:

Live stream used for testing
https://demo-hls5-live.zahs.tv/sd/master.m3u8?timeshift=3600

