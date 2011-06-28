class EtypeGroup < ClassyEnum::Base
  enum_classes :event, :activity
  def group_name
    ""
  end
end

class EtypeGroupEvent < EtypeGroup
  def group_name
    I18n.t('etypes.groups.event')
  end
end

class EtypeGroupActivity < EtypeGroup
  def group_name
    I18n.t('etypes.groups.activity')
  end
end