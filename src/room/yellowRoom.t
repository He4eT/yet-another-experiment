yellowRoom: Room
  'Hallway'
  " This is another room which every surface
    covered with matte white panels.
    <.p>
    There are three doors in the north wall."
  north: AskConnector {
    promptMessage =
      "There are three doors you could go through to the north.<br>"
    travelAction = GoThroughAction
    travelObjs = [brownDoor, khakiDoor, orangeDoorOutside]
    travelObjsPhrase = 'of them'
  }
;

/* Doors */

+ orangeDoorOutside: Door, AutoClosingDoor
  -> orangeDoor
  'orange door*doors'
  'door with <b>orange</b> triangle'
  " Sliding door with the number
    <q><<gameMain.experimentNumber>></q>
    and an orange triangle.<br>"
;

+ khakiDoor: IndirectLockable, Door
  'khaki door*doors'
  'door with <b>khaki</b> triangle'
  " Sliding door with the number
    <q><<gameMain.experimentNumber - 1>></q>
    and a khaki triangle.<br>"
  cannotUnlockMsg = 'The door does not appear to be opened.'
;

+ brownDoor: IndirectLockable, Door
  'brown door*doors'
  'door with <b>brown</b> triangle'
  " Sliding door with the number
    <q><<gameMain.experimentNumber - 2>></q>
    and a brown triangle.
    <br>You hear a slight vibration behind the door.<br>"
  cannotUnlockMsg = 'The door does not appear to be opened.'
;
