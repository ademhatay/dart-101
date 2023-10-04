void main(List<String> args) {
  // for loop
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  // for in loop
  var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"];
  for (var n in letters) {
    print(n);
  }

  // while loop
  var i = 0;
  while (i < 10) {
    print(i);
    i++;
  }

  // do while loop
  var j = 0;
  do {
    print(j);
    j++;
  } while (j < 10);

  // break
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }

  // continue

  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

  // labels
  outerloop:
  for (var i = 0; i < 3; i++) {
    print("Outerloop: $i");
    innerloop:
    for (var j = 0; j < 5; j++) {
      if (j > 3) break;

      if (i == 2) break outerloop;
      if (i == 1) continue innerloop;
      print("Innerloop: $j");
    }
  }
}
