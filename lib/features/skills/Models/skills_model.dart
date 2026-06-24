class SkillsModel {
  final String sectionName;
  final List<Skills> skills;
  const SkillsModel({required this.sectionName, required this.skills});
}

class Skills {
  final List<String> skill;
  final String label;
  Skills({required this.skill, required this.label});
}
