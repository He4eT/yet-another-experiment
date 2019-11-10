advertisingDisplay: Decoration, Fixture
  'bright lcd screen/display/monitor'
  'bright lcd display'
  " Huge and bright display mounted on the wall.
    <br>Images changes one by another.<.p>
    On the screen you see "

  location = yellowRoom

  dobjFor (Examine) {
    action () {
      inherited;
      clips.doScript();
      "<.p>";
    }
  }

  clips: ShuffledEventList {[
    'a bunch of different hieroglyphics on white background.',
    'a glitched commercial of some drinks.',
    'shuffled cuts from some softcore video.',
    'some strange, unrelated words.',
    'neat columns of hieroglyphs.'
  ]}
;
