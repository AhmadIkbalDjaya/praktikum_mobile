enum Gender {
  Pria, Wanita
}

extension GenderDesc on Gender{
  String get title {
    switch (this) {
      case Gender.Pria: return "Laki-laki";
      case Gender.Wanita: return "Perempuan";
      default: return "Laki-laki";
    }
  }
}