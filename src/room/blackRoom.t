blackRoom: Room
  'Long corridor'
  " Long corridor.

    <<blackElevatorDoor.makeOpen(nil)>>
    <<blackElevatorDoor.makeLocked(true)>>"
;

+ blackElevatorDoor: IndirectLockable, Door, RoomPartItem
  'elevator door*doors'
  'elevator doors'
  " Steel doors marked <q>restricted access</q>.
    <br>There are no controls here."

  specialNominalRoomPartLocation = defaultWestWall
;
