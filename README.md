# holt_winters_demo_video
A video that shows how Holt-Winters performs time-series decomposition and then generates a forecast. 
Set up to then generate a slide show that is narrated by Amazon Polly.

# See the Video
The resulting video is posted at: https://www.youtube.com/watch?v=eGB5x77qnco

# How It's Built
This uses `googleAnalyticsR` to pull time-series data and then `forecast` to actually decompose it and create a forecast.

The slides are then created as RMarkdown ioslides (I initially created them with xaringan, but the voiceover was wildly out of synch).

The video is then generated using the Ari package and Amazon Polly as outlined here: https://github.com/seankross/ari.
