# Easy Test Flighting :airplane:

This is a wrapper around Xcode Build tools that provides a CLI alternative to TestFlight releases.

[![Software License][ico-license]](LICENSE)

 ## Requirements
- Xcode Command Line Tools
-  agv tool setup in your project, See the "[Enabling agv tool section in the official guide to this wrapper](https://medium.com/cotta-cush/ios-builds-and-internal-release-from-command-line-2ca59093ba8b#0520)"
- An active Apple Developer account.  :smirk:

## Get Easy Test Flighting :airplane:

Over ssh

 ```1) git clone git@github.com:JohnItoo/easy-test-flighting.git ```
 
   ```2) sudo cp ~/easy-test-flighting/internalRelease.sh ~/path-to-your-project```
   
Over Curl

  ``` 1) cd to  ~/path-to-your-project```
  
  ``` 2) Do curl -L -O https://raw.githubusercontent.com/JohnItoo/easy-test-flighting/master/internalRelease.sh```
 
 ## Usage 
 Now that you have a copy of internalRelease.sh in the root directory. Run 
 ```./internalRelease.sh``` in the root directory and follow the prompts.

Check out this [publication](https://medium.com/cotta-cush/ios-builds-and-internal-release-from-command-line-2ca59093ba8b)   for some explanation and a thorough guide to the use of this tool.

(This repository is a better house for tracking the work that was started [here](https://gist.github.com/JohnItoo/de3b55937aeede810aaaddafcde0f59b) and was released Jun 2019. 

## Contributors

- [John Ohue](https://github.com/JohnItoo)

See [CONTRIBUTING.md](https://github.com/JohnItoo/easy-test-flighting/blob/master/CONTRIBUTING.md)

[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
