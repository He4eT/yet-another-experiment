tapeWall: Thing, RoomPartItem
  'striped safety tape*tapes'
  'safety tape'
  " Many layers of strips of
    two-tone safety tape obscure the doorway.
    <br>Looks like the black and yellow wall. "

  location = cyanRoom
  specialNominalRoomPartLocation = defaultWestWall

  isListed = nil
  isRagged = nil

  dobjFor (Remove) {
    action () {
      " After a while, you clear the doorway
        and make a mess on the floor. ";

      isRagged = true;

      location.west = pinkRoom;

      pieceOfTape.makePresent();
      uselessTape.makePresent();

      self.moveInto(nil);
    }
  }

  dobjFor (Doff) remapTo(Remove, self)
  dobjFor (Pull) remapTo(Remove, self)
  dobjFor (Break) remapTo(Remove, self)

  dobjFor (Take) {
    action () {
      tryImplicitAction(Remove, self);
      pieceOfTape.moveInto(me);
      "You take one strip. ";
    }
  }
;

pieceOfTape: PresentLater, Bandage
  'long safety tape/strip/piece'
  'long strip of tape'
  @cyanRoom
  " Quite a long piece of safety tape.
    <br>It can serve as a rope. "
;

uselessTape: PresentLater, Decoration
  'useless mess/tape'
  'useless mess'
  @cyanRoom
  " Small pieces of black and yellow tape,
    stuck together and crumpled. "
  isListed = true
;
