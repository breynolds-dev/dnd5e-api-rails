class Indexes::ClassIndexSerializer < RouteSerializer
  attributes :type, :class_options, :links

  def type
    'classes'
  end

  def class_options
    list = {}
    object.each do |cls|
      list.store(make_params(cls.name), make_class_entry(cls))
    end
    list
  end

  def links
    links = {}
    links.store('self', make_class_index_link)
    links.store('classes', classes_links)
    links.store('subclasses', subclasses_links)
    links
  end

  private

  def make_class_entry(class_name)
    {
      url: make_class_link(class_name),
      short_description: class_name.short_description,
      levels: make_class_levels_link(class_name),
      subclass_index: make_subclass_index_link(class_name),
      subclasses: make_subclasses_entry(class_name)
    }
  end

  def make_subclasses_entry(class_name)
    list = {}
    class_name.subclasses.each do |subclass|
      unless subclass.name == class_name.name
        list.store(make_params(subclass.name), make_subclass_link(subclass))
      end
    end
    list
  end

  def url
    make_class_link(object)
  end

  def classes_links
    links = {}
    object.all.each do |cls|
      links.store(make_params(cls.name), url)
    end
    links
  end

  def subclasses_links
    links = {}
    object.all.each do |cls|
      cls.subclasses.each do |subcls|
        unless cls.name == subcls.name
          links.store(make_params(subcls.name), make_subclass_link(subcls))
        end
      end
    end
    links
  end
end
