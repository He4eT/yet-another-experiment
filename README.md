# Yet another experiment 

A small "escape the room" style [TADS3](https://www.tads.org/) game.  
Designed as a set of examples for developers of [interactive fiction](http://www.ifwiki.org/index.php/FAQ).

![screenshot](/screenshot.png?raw=true)

## How to play

1. Download the story-file on the [release page](https://github.com/He4eT/tads3_experiment/releases)
1. Install the interpreter that supports TADS adventure games (see the list below)

### List of interpreters

  - Desktop: [gargoyle](https://github.com/garglk/garglk/) or [frobtads](https://github.com/realnc/frobtads)
  - Android: [fabularium](https://play.google.com/store/apps/details?id=com.luxlunae.fabularium&hl=en)
  - iOS: [frotz](https://apps.apple.com/au/app/frotz/id287653015)  

See the [full list](http://www.ifwiki.org/index.php/Interpreter).
  
## Development

### Build
  1. Clone this repo
  1. Install [frobtads](https://github.com/realnc/frobtads)
  1. Copy `frobtads/tads3/lib/` to `project_path/lib/`
  1. Copy `frobtads/tads3/include/`to `project_path/lib/include/`
  1. Run `t3make -f experiment` to compile
