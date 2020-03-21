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
  " This is the end.

    <<finishGameMsg('Wasted', '')>>"
};
