class Quest < ApplicationRecord
  has_rich_text :story
  has_rich_text :task

  has_many :assignments

  belongs_to :journey

  def story_text
    self.story.body
  end

  def task_text
    self.task.body
  end
end
