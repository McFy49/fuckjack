#!/bin/bash


#
# FUCK JACK
# Use with Android 8.X
#

# Kill the Jack server
  printf "Fuck Jack...\n\n"
  sleep 1
  ./prebuilts/sdk/tools/jack-admin kill-server
  rm -rf ~/.jack*

# IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT!
#
# Replace the value in the first of "ANDROID_JACK_VM_ARGS" with half of your RAM
# (i.e.: if you have 6GB of ram, use "-Xmx3g")
#
  export ANDROID_JACK_VM_ARGS="-Xmx3g -XX:+TieredCompilation -Dfile.encoding=UTF-8"
#
# IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT!

  export SERVER_NB_COMPILE=2
  export ANDROID_JACK_VM_ARGS=$JACK_SERVER_VM_ARGUMENT

# You may need to uncomment the following command if Java tells you to use it.
#  ulimit -n unlimited

  ./prebuilts/sdk/tools/jack-admin install-server prebuilts/sdk/tools/jack-launcher.jar prebuilts/sdk/tools/jack-server-4.11.ALPHA.jar
  ./prebuilts/sdk/tools/jack-admin start-server
