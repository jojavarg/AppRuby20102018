class PostsSerializer < ActiveModel::Serializer
    attributes :id, :title, :body 
    belongs_to : users
end