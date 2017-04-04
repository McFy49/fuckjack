# FUCK JACK (V2)

### Tired of your AOSP (Android Open Source Project) oreo builds failing because JAVA and JAVAC are running out of memory? Well, this is because of the Jack server. If you have less than 16GB of RAM, this is a common issue. Use one of these scripts before compilation and it may save you a few headaches. ###

### How to get it ###
```bash
  git clone git://github.com/mikecriggs/fuckjack.git fuckjack
```

### User input dependent script ###
```bash
  cd fuckjack
  cp fuckjack.sh ~/<YOUR AOSP SOURCE DIRECTORY>
  cd <YOUR AOSP SOURCE DIRECTORY>
  ./fuckjack.sh
```
### Automated script (no user input) ###
```bash
  cd fuckjack
  cp auto-fuckjack.sh ~/<YOUR AOSP SOURCE DIRECTORY>
  cd <YOUR AOSP SOURCE DIRECTORY>
  ./auto-fuckjack.sh
 
```
### You may use this script or any part of it in any project without any permission or licensing. ###

### This is no longer a build script. Please use this BEFORE using your own build script or building manually. ###
