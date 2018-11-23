class SkillGroup {
  int groupId;
  String groupName;
  String subTitle;

  SkillGroup(this.groupId, this.groupName, this.subTitle);
}


List<SkillGroup> skillGoupList = [
  new SkillGroup(0, '基础条件', ''),
  new SkillGroup(1, '任务', ''),
  new SkillGroup(2, '耐性', ''),
  new SkillGroup(3, '属性变化', ''),
  new SkillGroup(4, '战斗', '生存'),
  new SkillGroup(5, '战斗', '属性/异常'),
  new SkillGroup(6, '战斗', '攻击'),
  new SkillGroup(7, '套装技能', ''),
  new SkillGroup(8, '额外镶嵌槽', ''),
];


List<SkillGroup> equipGoupList = [
  new SkillGroup(0, '固定装备', ''),
  new SkillGroup(1, '任务', ''),
  new SkillGroup(2, '耐性', ''),
  new SkillGroup(3, '属性变化', ''),
  new SkillGroup(4, '战斗', '生存'),
  new SkillGroup(5, '战斗', '属性/异常'),
  new SkillGroup(6, '战斗', '攻击'),
];