yellowRoom: Room
  'Hallway'
  " This is another room which every surface
    covered with matte white panels.
    <.p>
    A bright screen on the wall attracts your attention.
    <.p>
    There are three doors in the north wall
    and a wide doorway leading south."

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
  'door with <b>orange</b> triangle'
  " Sliding door with the number
    <q><<gameMain.experimentNumber>></q>
    and an orange triangle.<br>"
  specialNominalRoomPartLocation = defaultNorthWall
;

+ khakiDoor: IndirectLockable, Door, RoomPartItem
  'khaki door*doors'
  'door with <b>khaki</b> triangle'
  " Sliding door with the number
    <q><<gameMain.experimentNumber - 1>></q>
    and a khaki triangle.<br>"
  specialNominalRoomPartLocation = defaultNorthWall
  cannotUnlockMsg = 'The door does not appear to be opened.'
;

+ brownDoor: IndirectLockable, Door, RoomPartItem
  'brown door*doors'
  'door with <b>brown</b> triangle'
  " Sliding door with the number
    <q><<gameMain.experimentNumber - 2>></q>
    and a brown triangle.
    <br>You hear a slight vibration behind the door.<br>"
  specialNominalRoomPartLocation = defaultNorthWall
  cannotUnlockMsg = 'The door does not appear to be opened.'
;
