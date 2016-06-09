# GraphQL -> Cypher

Generate Cypher queries from GraphQL queries.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add graphql_to_cypher to your list of dependencies in `mix.exs`:

        def deps do
          [{:graphql_to_cypher, "~> 0.0.1"}]
        end

  2. Ensure graphql_to_cypher is started before your application:

        def application do
          [applications: [:graphql_to_cypher]]
        end

