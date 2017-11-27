class Resolvers::CreateLink < GraphQL::Function
  argument :description, !types.String
  argument :url,         !types.String

  type Types::LinkType

  def call(_obj, args, _ctx)
    params = {
        description: args[:description],
        url: args[:url]
    }

    Link.create!(params)
  end
end