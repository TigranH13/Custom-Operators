void main(List<String> args) {
  final a = FamilyMember(name: 'Sox') + FamilyMember(name: 'Xiar');
  4 + 5;
  print(a.toString());

  print(FamilyMember(name: 'as') == FamilyMember(name: 'as'));
}

class FamilyMember {
  final String name;

  FamilyMember({required this.name});

  @override
  String toString() => 'Familyy memeber (name=$name)';
}

class Family {
  final List<FamilyMember> members;

  const Family({required this.members});

  @override
  String toString() => 'Familyy  (members=$members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => (Family(members: [this, other]));
}
