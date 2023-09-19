
class Person{
  final String? NIK;
  final String? name;
  final int? umur;
  final int? hasMarried;
  final String? gender;

  const Person({
    required this.NIK,
    required this.name,
    required this.umur,
    required this.hasMarried,
    required this.gender
  }); 

  Map<String, dynamic> toMap(){
    return {
      "NIK" : NIK,
      "name" : name,
      "umur" : umur,
      "hasMarried" : hasMarried,
      "gender" : gender
    };
  }

  String toString(){
    return 'Person{NIK : $NIK, name: $name, umur: $umur, hasMarried:$hasMarried, gender:$gender}';
  }

}