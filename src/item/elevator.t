elevatorDoor: LockableWithKey, Door
  -> blackElevatorDoor
  'elevator door*doors'
  'elevator'
  @pinkRoom
  " Steel doors marked <q>restricted access</q>.
    <br>There is a card reader on the right. "

  keyList = [ keycard ]
  knownKeyList = [ keycard ]
  specialNominalRoomPartLocation = defaultSouthWall

  openStatus {
    return '<br>The elevator doors are <<isOpen
      ? 'open'
      : 'closed'>>';
  }

  dobjFor (UnlockWith) {
    action () {
      inherited;
      self.makeOpen(true);
      " A few seconds later
        the elevator arrived on the floor. ";
    }
  }

  noteTraversal (traveler) {
    " You enter the elevator.
      There is no controls inside.
      <br>After you entered, the doors closed,
      and after a while the elevator
      stopped on another floor.\b";
    inputManager.pauseForMore(true);
    cls();
  }
;

+ Decoration, RoomPartItem
  'keycard card reader'
  'keycard reader'
  " Small security device without any visible indicators.
    <br>You can unlock the elevator doors
    using a suitable key card. "
  specialNominalRoomPartLocation = defaultSouthWall
;
