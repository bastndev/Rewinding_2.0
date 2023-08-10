/* class SumNumber {
  int num1;
  int num2;

  SumNumber(this.num1, this.num2);

  int sum() => num1 + num2;
}

void main() {
  final sum1 = SumNumber(10, 5);
  final result = sum1.sum();
  print("The sum of ${sum1.num1} and ${sum1.num2} is: $result");
} */

// FIXME: Update Class | Practice

/* class MultiNumber{
  double num1;
  double num2;

  MultiNumber(this.num1, this.num2);

  double multi() => num1 * num2;
}
void main(){
  final multi1 = MultiNumber(5, 5);
  final result = multi1.multi();
  print("The Multiply is: $result");
} */

//FIXME: Fernando H | Class

/* class Hero{
  String? power;
  String? name;

  String toString(){
    return 'Hero:\nname:$name\nPower:$power';
  }
}

void main (){

  final wolverine = new Hero();
  wolverine.name = 'Logan';
  wolverine.power = 'REgeneration';
  print(wolverine);
} */

// FIXME: F Herrera
/* class Hero{
  String power;
  String name;

  Hero(this.name, this.power);

  String toString(){
    return 'Hero:\nname:${this.name}\nPower:${this.power}';
  }
}

void main (){

  final wolverine = new Hero("Logan", "Regeneration");
  print(wolverine);
} */

// TODO:  F H
/* class Hero{
  String power;
  String name;

  Hero({required this.name, required this.power});

  String toString(){
    return 'Hero:\nname:${this.name}\nPower:${this.power}';
  }
}
void main (){

  final wolverine = new Hero(name:'Logan', power:'Regeneration');
  print(wolverine);
} */
// TODO:  F H
/* class Hero{
  String? power;
  String? name;

  Hero({required this.name, required this.power});

  Hero.fromJson(Map<String, String> json){
    this.name =json['name']!;
    this.power =json['power']!;
  }

  String toString(){
    return 'Hero:\nname:${this.name}\nPower:${this.power}';
  }
}
void main (){
  final rawJson = {
    'Name' : 'Tony',
    'Power': 'Money',
  };
  print(rawJson);

  // final wolverine = new Hero(name:'Logan', power:'Regeneration');
  // print(wolverine);
} */

// FIXME: Class
/* class Hero{
  String? power;
  String? name;

  Hero({required this.name, required this.power});

  Hero.fromJson(Map<String, String> json){
    this.name  = json['name']!;
    this.power = json['power']!;
  }

  String toString(){
    return 'Hero:\nname:${this.name}\nPower:${this.power}';
  }
}
void main (){
  final rawJson = {
    'name' : 'Tony Stark',
    'power': 'Money',
  };
  final ironman = Hero.fromJson(rawJson);
  print(ironman);
} */

//FIXME: Class
class Hero {
  String name;
  String power;

  Hero({required this.name, required this.power});

  Hero.fromJson(Map<String, String> json):
    this.name = json['name']!,
    this.power = json['power']??"He don't have Power";

  String toString() {
    return 'Hero:\nname:${this.name}\nPower:${this.power}';
  }
}

void main() {
  final rawJson = {
    'name': 'Tony Stark',
    // 'power': 'Money',
  };
  final ironman = Hero.fromJson(rawJson);
  print(ironman);
}
