labCoat: Container
  'bloody cloth/pocket*pockets'
  'bloody cloth'
  @dumpster
  " The lab coat labeled <q>Dr. O'Neill</q>.
    Aside from the bloodstains,
    you can see some sloppy cuts obviously made in a hurry.
    << labKey.location == labCoat
      ? '<br>Something heavy is hidden inside one of the pockets. '
      : ''>>"

  firstLook = nil
  initDesc = "
    <<firstLook ? 'It\'s' : 'The lab coat'>>
    covered in blood. <br>
    You should take a closer look.
    <<firstLook = nil>>"

  dobjFor (Examine) {
    action() {
      if (!described) changeName();
      inherited();
    }
  }

  dobjFor (Search) {
    preCond = [ objHeld ]
  }

  changeName () {
    name = 'lab coat';
    firstLook = true;
    initializeVocabWith('cutted lab coat');
    "The bloody cloth turns out to be a cutted lab coat.";
  }
;

+ labKey: Key, Hidden
  'long steel tubular lab key*keys'
  'tubular key'
  "Long tubular key made of steel."
;
