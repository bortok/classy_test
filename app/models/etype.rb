class Etype < ActiveRecord::Base
  attr_accessible :code, :group, :order
  classy_enum_attr :group, :enum => :etype_group

  etype_regex = /\A\w+\z/i

  validates :code,  :presence => true, :length => { :maximum => 20 },
                    :uniqueness => { :case_sensitive => false,
                                     :scope => [:group] },
                    :format => { :with => etype_regex }

  validates :group, :presence => true

  delegate :group_name, :to => :group

  has_many  :billboards

  def name
    unless self.group.nil? || self.code.nil?
      I18n.t("etypes.#{self.group}.#{self.code}")
    end
  end

end
