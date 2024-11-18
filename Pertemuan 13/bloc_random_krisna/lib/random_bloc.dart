import 'dart:async';
import 'dart:math';

class RandomBloc {
  final _generateRandomController = StreamController<void>();
  final _randomNumberController = StreamController<int>();
  Sink<void> get generateRandom => _generateRandomController.sink;

  Stream<int> get randomNumber => _randomNumberController.stream;

  void dispose(){
    _generateRandomController.close();
    _randomNumberController.close();
  }

  RandomBloc(){
    _generateRandomController.stream.listen((_){
      final random = Random().nextInt(10);
      _randomNumberController.sink.add(random);
    });
  }
}