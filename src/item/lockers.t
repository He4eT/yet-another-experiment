lockers: Fixture
  'lockers'
  'lockers'
  @pinkRoom
  " A row of service lockers with a numpad keyboard on the side.
    <br>This row, according to the signs,
    includes (from left to right) the lockers of
    <br>Dr. O'Neill, Alice Dash, and Mark Hopper. "
;

modify VerbRule(SetTo)
  ('press' | 'input') singleLiteral ('on' | 'with') singleDobj
  : /* empty */
;

+ numpad: Dial, Component
  'numpad/keyboard/keypad'
  'numpad keyboard'
  " An electronic device with a numeric keypad
    and a small 4-digit display.
    <br>Apparently, you can type passcode
    on this keyboard to open any locker. "

  makeSetting(val) {
    curSetting = val is in (aliceLocker.code)
      ? val
      : '0';
  }

  dobjFor (TypeLiteralOn) remapTo(SetTo, self, OtherObject)

  dobjFor (SetTo) {
    action () {
      inherited;
      if (curSetting == aliceLocker.code) {
        aliceLocker.makeLocked(nil);
        aliceLocker.makeOpen(true);
        "The middle drawer opened with a click. ";
      } else {
        " You heard an annoying sound and
          a red light flashed on the keypad. ";
      }
    }
  }
;

+ drLocker: IndirectLockable, LockableContainer, Component
  'left locker'
  'left locker'
  "The sign reads <q>Dr. O'Neill</q>.\b"
;

+ markLocker: IndirectLockable, LockableContainer, Component
  'right locker'
  'right locker'
  " The sign reads <q>Mark Hopper</q>.
    <br>There's a huge dent in the side.\b"
;

+ aliceLocker: IndirectLockable, LockableContainer, Component
  'middle central locker'
  'middle locker'
  "The sign reads <q>Alice Dash</q>.\b"
  code = '1984'
;

++ keycard: Key
  'key/card/keycard'
  'keycard'
  " It's a standard format keycard.
    <br>On the front side is the name
    <q>Alice Dash</q> and a barcode.
    <br>The reverse side is empty. "
;
