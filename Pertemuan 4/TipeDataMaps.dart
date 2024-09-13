void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);

var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';

gifts.addAll({'Nim':'2241720118','nama':'krisna'});
nobleGases.addAll({1:'2241720118',2:'krisna'});
mhs1.addAll({'Nim':'2241720118','nama':'krisna'});
mhs2.addAll({1:'2241720118',2:'krisna'});

print(gifts);
print(nobleGases);
print(mhs1);
print(mhs2);
}