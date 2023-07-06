class QuestSerializer
  include JSONAPI::Serializer

  attributes :name, :story_text, :task_text
end