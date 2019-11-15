# Easy Test Flighting :airplane:

This is a wrapper around Xcode Build tools that provides a CLI alternative to TestFlight releases.

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
``` 2) Do curl -L -O```

## Usage 
Now that you have a copy of internalRelease.sh in the root directory. Run 
```./internalRelease.sh``` in the root directory and follow the prompts.

Check out this [publication](https://medium.com/cotta-cush/ios-builds-and-internal-release-from-command-line-2ca59093ba8b)   for some explanation and a thorough guide to the use of this tool.

## Contributors

- [John Ohue](https://github.com/JohnItoo)


