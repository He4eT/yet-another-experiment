yellowRoom: Room
  'Hallway'
  " This is another room which every surface
    covered with matte white panels.
    <br>A bright screen on the wall attracts your attention.
    <.p>
    There are three doors in the north wall
    and a wide doorway leading south. "

  south = cyanRoom

  north: AskConnector {
    promptMessage =
      "There are three doors you could go through to the north.<br>"
    travelAction = GoThroughAction
    travelObjs = [brownDoor, khakiDoor, orangeDoorOutside]
    travelObjsPhrase = 'of them'
  }
;

/* Doors */

+ orangeDoorOutside: Door, AutoClosingDoor, RoomPartItem
  -> orangeDoor
  'orange door*doors'
  'orange door'
  " Sliding door with the number
    <q><<gameMain.experimentNumber>></q>
    and an orange triangle.<br>"
  specialNominalRoomPartLocation = defaultNorthWall
;

+ khakiDoor: IndirectLockable, Door, RoomPartItem
  'khaki door*doors'
  'khaki door'
  " Sliding door with the number
    <q><<gameMain.experimentNumber - 1>></q>
    and a khaki triangle.<br>"
  specialNominalRoomPartLocation = defaultNorthWall
  cannotUnlockMsg = 'The door does not appear to be opened.'
;

+ brownDoor: IndirectLockable, Door, RoomPartItem
  'brown door*doors'
  'brown door'
  " Sliding door with the number
    <q><<gameMain.experimentNumber - 2>></q>
    and a brown triangle.
    <br>You hear a slight vibration behind the door.<br>"
  specialNominalRoomPartLocation = defaultNorthWall
  cannotUnlockMsg = 'The door does not appear to be opened.'
;
