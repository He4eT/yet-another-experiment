#include <adv3.h>
#include <en_us.h>

versionInfo: GameID
  IFID = 'F1E9FCB6-84D5-4FFA-B7E6-74458D83018B'
  version = '2020.03.27'

  name = 'Yet another experiment'
  desc = 'A simple "Escape the room" style game. '
  showAbout () {
    " << desc >> <br>
      Designed as a small set of
      useful examples for developers.\b
      https://github.com/He4eT/tads3_experiment/";
  }

  byline = 'by He4eT'
  authorEmail = 'He4eT <He4eTHb1u@gmail.com>'
  showCredit () {
    "Hello there!";
  }
;

gameMain: GameMainDef
  initialPlayerChar = me

  experimentNumber = nil
  dayNumber = nil

  showIntro () {
    cls();

    experimentNumber = 10 + rand(100);
    dayNumber = rand(1000);

    "\b
    <q>Experiment <<experimentNumber>>,
    day number <<dayNumber>>,</q>
    a cold mechanical voice suddenly interrupts
    your restless sleep.\b
    <<inputManager.pauseForMore(true)>>
    Enter <q>instruction</q> if you need a tutorial.\b";
  }
  showGoodbye () {
    "\bGame over\b";
  }
;

/*  */

#include "src/actor/pc.t"

#include "src/item/interior.t"
#include "src/item/_atmosphere.t"

#include "src/action/repair.t"
#include "src/item/_bandage.t"

/* rooms */

#include "src/room/orangeRoom.t"
#include "src/room/orangeBathroom.t"
#include "src/item/dentalFloss.t"

#include "src/room/yellowRoom.t"
#include "src/item/advertisingDisplay.t"

#include "src/room/cyanRoom.t"
#include "src/item/tape.t"

#include "src/room/pinkRoom.t"
#include "src/item/labCoat.t"
#include "src/item/lockers.t"
#include "src/item/elevator.t"

#include "src/room/redRoom.t"
#include "src/item/dataCable.t"
#include "src/actor/surgeryAssistant.t"

#include "src/room/blackRoom.t"
