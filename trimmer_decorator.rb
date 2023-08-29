required_relative 'base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    trimmed_name = @nameable.correct_name
    trimmed_name.length > 10 ? trimmed_name[0..9] : trimmed_name
  end
end
