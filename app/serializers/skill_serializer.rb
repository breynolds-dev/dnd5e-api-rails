class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :ability, :description

  def description
    object.desc.split('\n\r')
  end
end
