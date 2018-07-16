require 'bson'

require 'rom/commands'

module ROM
  module Mongo
    module Commands
      class Create < ROM::Commands::Create
        adapter :mongo

        def collection
          relation.dataset
        end

        def execute(document)
          result = collection.insert(document)
          document[:_id] = result.inserted_id
          [document]
        end
      end

      class Update < ROM::Commands::Update
        adapter :mongo

        def collection
          relation.dataset
        end

        def execute(query, attributes)
          view = collection.where(query)
          view.update_all('$set' => attributes)
          view.to_a
        end
      end

      class Delete < ROM::Commands::Delete
        adapter :mongo

        def collection
          relation.dataset
        end

        def execute(query)
          collection.where(query).remove_all
          []
        end
      end
    end
  end
end
