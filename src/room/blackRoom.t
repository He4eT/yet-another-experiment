blackRoom: Room
  'Dark corridor'
  " A long dark corridor
    running from west to east.
    <br>
    <br>A single flickering neon lamp
    is visible in the distance.
    <br>The eastern end of the corridor is dark.

    <<blackElevatorDoor.makeOpen(nil)>>
    <<blackElevatorDoor.makeLocked(true)>>"

    east = finish
;

+ blackElevatorDoor: IndirectLockable, Door, RoomPartItem
  'elevator door*doors'
  'elevator doors'
  " Steel doors marked <q>restricted access</q>.
    <br>There are no controls here. "

  specialNominalRoomPartLocation = defaultWestWall
;

+ Distant, Decoration
  'flickering neon lamp'
  'neon lamp'
  "Flickering neon lamp. "
;

finish: FakeConnector {
  " After walking a few steps,
    you noticed that the corridor
    began to fill with clouds of some gas
    and your consciousness has started to leave you.\b
    A man in the uniform of
    a corporate security guard and
    a gas mask came out of the darkness.\b
    <q>It's nice to meet you here again,
    subject number <<gameMain.experimentNumber>>...</q>\b
    After this words you passed out.\b

    <<inputManager.pauseForMore(true)>>
    <<finishGameMsg(
      'Day #' + gameMain.dayNumber + ' is over',
      [])>>"
};
