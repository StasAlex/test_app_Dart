import 'dart:html';
import 'dart:math' as math;

randomColor(){
  var random = new math.Random();
  var r = random.nextInt(256).toRadixString(16);
  var g = random.nextInt(256).toRadixString(16);
  var b = random.nextInt(256).toRadixString(16);
  var hash  = '#';
  var color = hash + r + g + b;
  return color;
}
onChangeBg(){
  var body = document.body;
  body.onClick.listen( (event) => body.style
    ..background = randomColor()
  );
}
void main() {
  querySelector('#output').text = 'Hey there!!!';
  randomColor();
  document.body.style
    ..background = randomColor();
  onChangeBg();
}

