class AbilitySerializer < RouteSerializer
  attributes :id, :name, :description, :measures, :important_for,
             :associated_skills, :links

  def important_for
    important_for_list = {}
    object.important_for.tr(' ', '').split(',').each do |cls|
      if cls == 'Everyone'
        important_for_list.store(make_params(cls), "#{root_url}/classes/")
      else
        important_for_list.store(make_params(cls), "#{root_url}/classes/#{make_params(cls)}")
      end
    end
    important_for_list
  end

  def associated_skills
    associated_skills_list = {}
    object.skills.each do |skill|
      associated_skills_list.store(make_params(skill.name), "#{root_url}/skills/#{make_params(skill.name)}")
    end
    associated_skills_list
  end

  def links
    {
      self: "#{root_url}/abilities/#{make_params(object.name)}",
      related: related_links
    }
  end

  def related_links
    related_links = {}
    related_links.store('classes', important_for)
    related_links.store('skills', associated_skills) unless object.skills.empty?
    related_links
  end
end
