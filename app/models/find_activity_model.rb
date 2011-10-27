class FindActivityModel
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :schedule
  attr_accessor :isOutdoors
  attr_accessor :cost
  attr_accessor :physicalLevel
  attr_accessor :mentalLevel
  attr_accessor :isAlone

  validates_presence_of :schedule
  validates_presence_of :isOutdoors
  validates_presence_of :cost
  validates_presence_of :physicalLevel
  validates_presence_of :mentalLevel
  validates_presence_of :isAlone

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
