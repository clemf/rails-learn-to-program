class Lesson < ActiveRecord::Base
  validates :name, :presence => true

  def next
    current_lesson = self
    lesson_number = current_lesson.number + 1
    next_lesson = Lesson.find_by number: lesson_number
    return next_lesson
  end
end
