#include <adv3.h>
#include <en_us.h>

versionInfo: GameID
  name = 'Uncontrolled experiment'
  byline = 'by He4eT'
  authorEmail = 'He4eT <He4eTHb1u@gmail.com>'
  desc = 'A simple demo for TADS 3.'
  version = '0'
  IFID = 'F1E9FCB6-84D5-4FFA-B7E6-74458D83018B'
  showCredit () {"
    Some credits here.
  ";}
  showAbout () {"
    << desc >> <br>
    Set of usefull examples for developers.
  ";}
;

gameMain: GameMainDef
  initialPlayerChar = me

  experimentNumber = nil
  dayNumber = nil

  showIntro () {

    experimentNumber = 10 + rand(100);
    dayNumber = rand(1000);

    "<.p>
    <q>Experiment <<experimentNumber>>,
    day number <<dayNumber>>,</q>
      a cold mechanical voice suddenly interrupts
      your restless sleep.
    <q>Have a nice day!</q>
    <.p>";
  }
  showGoodbye () {"
    <.p>Game over<.p>
  ";}
;

#include "src/room/orangeRoom.t"
#include "src/room/orangeBathroom.t"

#include "src/room/yellowRoom.t"
#include "src/item/advertisingDisplay.t"

#include "src/room/cyanRoom.t"

#include "src/actor/pc.t"
