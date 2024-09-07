bool isPrime(int number) {
  for (var j = 2; j < number; j++) {
    if (number % j == 0) {
 
      return true;
    }
  }
  return false;
}

void main() {
  for (var i = 0; i <= 201; i++) {
    if (i <= 1) {
      continue;
    }
    if (i == 2) {
      print('Krisna Andika Wijaya / 2241720118');
      continue;
    }
    if (!isPrime(i)) {
      print(i);
      print('Krisna Andika Wijaya / 2241720118');
    }
  }
}
