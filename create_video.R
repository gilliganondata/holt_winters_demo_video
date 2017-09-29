# This is the script used to actually generate the video using ARI
# This is mostly documented at: http://seankross.com/2017/09/25/Create-Videos-from-R-Markdown-Documents-with-Ari.html
# You will need to ensure ffmpeg is installed for the process to fully complete. See ?ari_stitch() and
# https://www.rdocumentation.org/packages/ndtv/versions/0.10.0/topics/install.ffmpeg.
# In addition, I had to ensure phantomjs was installed (again?) -- that's more due to the fact
# that the slides use xaringan, I think. I used Homebrew to install it on my Mac -- see
# https://ariya.io/2012/02/phantomjs-and-mac-os-x

library(aws.s3)
library(ari)

# Ensure you've set up the followinw variables in .Renviron
# AWS_ACCESS_KEY_ID = "XXXXXX"
# AWS_SECRET_ACCESS_KEY = "XXXXXX"
# AWS_DEFAULT_REGION = "us-east-2"

ari_narrate("hw_explanation_slides_ioslides.Rmd",
            "hw_explanation_slides_ioslides.html", 
            voice = "Brian", capture_method = "iterative")
