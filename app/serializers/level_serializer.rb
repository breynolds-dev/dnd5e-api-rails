class LevelSerializer < RouteSerializer
  attributes :level, :base_class, :subclass, :hit_dice,
             :hit_points_1st_level, :hit_points_at_higher_levels,
             :proficiency_bonus

  def level
    object.number
  end

  def base_class
    object.class_name.name
  end

  def subclass
    object.subclass.name
  end

  def hit_dice
    "1d#{object.class_name.hit_die} per class level"
  end

  def hit_points_1st_level
    "#{object.class_name.hit_die} + your Constitution modifier"
  end

  def hit_points_at_higher_levels
    "1d#{object.class_name.hit_die} + your Constitution modifier per class level after the 1st"
  end

  def proficiency_bonus
    "+#{object.prof_bonus}"
  end

  attribute :sneak_attack, if: :rogue?
  attribute :cantrips_known, if: :cantrips?
  attribute :spells_known, if: :spells_known?
  attribute :spell_slots_level, if: :spells_slots?

  [:martial_arts, :ki_points, :unarmored_movement].each do |attr|
    attribute attr, if: :monk?
  end

  [:rage_count, :rage_damage_bonus].each do |attr|
    attribute attr, if: :barbarian?
  end

  [:spell_slots, :slot_level, :invocations_known].each do |attr|
    attribute attr, if: :warlock?
  end

  attribute :sorcery_points, if: :sorcerer?
  attribute :links

  def sneak_attack
    "#{object.sneak_attack}d6"
  end

  def rage_count
    if object.rage_count.zero? && object.number == 20
      'Unlimited'
    else
      object.rage_count.to_s
    end
  end

  def rage_damage_bonus
    "+#{object.rage_damage_bonus}"
  end

  def spell_slots_level
    spell_slot_list = {}
    spell_slot_list.store('1', object.spell_slots_level_01)
    spell_slot_list.store('2', object.spell_slots_level_02)
    spell_slot_list.store('3', object.spell_slots_level_03)
    spell_slot_list.store('4', object.spell_slots_level_04)
    unless subclass?('Eldritch Knight') || subclass?('Arcane Trickster')
      spell_slot_list.store('5', object.spell_slots_level_05)
      unless class_name?('Ranger') || class_name?('Paladin')
        spell_slot_list.store('6', object.spell_slots_level_06)
        spell_slot_list.store('7', object.spell_slots_level_07)
        spell_slot_list.store('8', object.spell_slots_level_08)
        spell_slot_list.store('9', object.spell_slots_level_09)
      end
    end
    spell_slot_list
  end

  def links
    link_list = {}
    link_list.store('base_class', make_class_link(object.class_name))
    unless object.subclass.name == object.class_name.name
      link_list.store('subclass', make_subclass_link(object.subclass))
    end
    link_list.store('self', make_subclass_level_link(object.subclass, object.number))
    link_list
  end

  def class_name?(class_name)
    object.class_name.name == class_name
  end

  def subclass?(subclass)
    object.subclass.name == subclass
  end

  def barbarian?
    object.class_name.name == 'Barbarian'
  end

  def monk?
    object.class_name.name == 'Monk'
  end

  def rogue?
    object.class_name.name == 'Rogue'
  end

  def sorcerer?
    object.class_name.name == 'Sorcerer'
  end

  def warlock?
    object.class_name.name == 'Warlock'
  end

  def cantrips?
    class_list = %w(Bard Cleric Druid Ranger Sorcerer Warlock Wizard)
    subclass_list = ['Eldritch Knight', 'Arcane Trickster']

    class_list.include?(object.class_name.name) ||
      subclass_list.include?(object.subclass.name)
  end

  def spells_known?
    class_list = %w(Bard Ranger Sorcerer Warlock)
    subclass_list = ['Eldritch Knight', 'Arcane Trickster']

    class_list.include?(object.class_name.name) ||
      subclass_list.include?(object.subclass.name)
  end

  def spells_slots?
    class_list = %w(Bard Cleric Druid Paladin Ranger Sorcerer Wizard)
    subclass_list = ['Eldritch Knight', 'Arcane Trickster']

    class_list.include?(object.class_name.name) ||
      subclass_list.include?(object.subclass.name)
  end
end
