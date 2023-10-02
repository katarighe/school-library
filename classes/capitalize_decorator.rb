require './decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name_name.capitalize
  end
end
