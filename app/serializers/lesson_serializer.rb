class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :desciption, :date, :start_hour, :end_hour, :session_id
end
