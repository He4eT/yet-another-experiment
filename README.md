# Yet another experiment 

A small "escape the room" style [TADS3](https://www.tads.org/) game.  
Designed as a set of examples for developing [interactive fiction](http://www.ifwiki.org/index.php/FAQ).

![screenshot](/screenshot.png?raw=true)

## How to play

1. Download `yet_another_experiment.t3` from the [release page](https://github.com/He4eT/tads3_experiment/releases)
1. Install the interpreter that supports TADS adventure games (see the list below)

### List of interpreters

  - Desktop: [gargoyle](https://github.com/garglk/garglk/) or [frobtads](https://github.com/realnc/frobtads)
  - Android: [fabularium](https://play.google.com/store/apps/details?id=com.luxlunae.fabularium&hl=en)
  - iOS: [frotz](https://apps.apple.com/au/app/frotz/id287653015)  

See the [full list](http://www.ifwiki.org/index.php/Interpreter).
  
## Development

### List of things done

This project was created as a playground for learning TADS3.  
The resulting game is a set of "bricks" for building other games,
and you can see  
the full list of "bricks" on [this page](/docs/table_of_contents.md).

### Pre-build

  1. Clone this repo
  1. Install [frobtads](https://github.com/realnc/frobtads)
  1. Copy `frobtads/tads3/lib/` to `project_path/lib/`
  1. Copy `frobtads/tads3/include/`to `project_path/lib/include/`
  
### Build
```
t3make -f experiment
```

### Incremental build
```
watch -n 1 t3make -d -we -nobanner -f experiment
```

## Tutorials and documentation

1. [Getting Started in TADS 3](https://www.tads.org/t3doc/doc/gsg/index.html)  
Short tutorial by Eric Eve
1. [TADS 3 Tour Guide](https://www.tads.org/t3doc/doc/tourguide/index.html)  
Not so short tutorial by Eric Eve
1. [Learning TADS 3](https://www.tads.org/t3doc/doc/learning/Learning%20T3.pdf)  
Really huge PDF book by Eric Eve
1. [TADS 3 Library Reference Manual](https://www.tads.org/t3doc/doc/libref/index.html)  
Index of the adv3 library and core T3 system library,  
derived directly from the source files
  
These and other texts can be found on the [TADS 3 Bookshelf](http://www.tads.org/t3doc/doc/index.htm).
