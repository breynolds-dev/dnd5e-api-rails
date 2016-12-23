# Classes Model
class ClassName < ApplicationRecord
  def subclasses
    case name
    when 'Barbarian'
      Classes::Barbarian.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Bard'
      Classes::Bard.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Cleric'
      Classes::Cleric.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Druid'
      Classes::Druid.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Fighter'
      Classes::Fighter.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Monk'
      Classes::Monk.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Paladin'
      Classes::Paladin.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Ranger'
      Classes::Ranger.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Rogue'
      Classes::Rogue.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Sorcerer'
      Classes::Sorcerer.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Warlock'
      Classes::Warlock.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    when 'Wizard'
      Classes::Wizard.all.map{ |cls| cls.subclass unless cls.subclass == name }.uniq.reject(&:nil?)
    end
  end
end
