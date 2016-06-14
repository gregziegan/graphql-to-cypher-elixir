defmodule Reduce do

  # def reduce(tokens) do
  #   entityPointer = %{}
  #   nulls = 0
  #
  #   fn results ->
  #     result = %{}
  #     unless results.results.length do
  #       results
  #     end
  #     results = results.results[0]
  #     columns = results.columns
  #     rows = Enum.map(results.data, fn x -> x.row end)
  #     graphs = Enum.map(results.data, fn x -> x.graph end)
  #     added = %{}
  #     graph = Enum.reduce(graphs, fn sum, item ->
  #       item = item || { nodes: [], relationships: [] }
  #       item.nodes.forEach((node) => {
  #         sum[node.id] = {
  #           labels: node.labels,
  #           relationships: []
  #         }
  #       })
  #       sum
  #     end)
  #
  #     graphs.forEach((item) => {
  #       if (!item || !item.relationships) return
  #       item.relationships.forEach((relationship) => {
  #         start = graph[relationship.startNode]
  #         end = graph[relationship.endNode]
  #         add(start)
  #         add(end)
  #         function add (type) {
  #           if (type && !type.relationships.filter((x) => x.id === relationship.id).length) type.relationships.push(relationship)
  #         }
  #       })
  #     })
  #
  #     nodes = tokens.reduce((sum, token) => {
  #       sum[token.alias] = token
  #       token.results = []
  #       return sum
  #     }, {})
  #
  #     for (i = 0; i < rows.length; i++) {
  #       row = rows[i]
  #       value
  #       for (j = 0; j < row.length; j++) {
  #         column = columns[j]
  #         if (/__.*id$/.test(column)) {
  #           entity = column.slice(2, -2)
  #           if (!row[j]) row[j] = nulls++
  #           id = row[j]
  #           node = nodes[entity]
  #           if (!added[id] && !node.parent) {
  #             added = {}
  #           }
  #           if (!added[id]) {
  #             data = {
  #               properties: {}
  #             }
  #             if (node.parent) {
  #               entityPointer[node.parent][entity] = entityPointer[node.parent][entity] || []
  #               entityPointer[node.parent][entity].push(data)
  #               entityPointer[entity] = data
  #             } else {
  #               result[entity] = result[entity] || []
  #               result[entity].push(data)
  #               entityPointer[entity] = data
  #             }
  #             for (k = 1; k < row.length; k++) {
  #               key = columns[k]
  #               part = key.split('.')
  #               if (part[0] !== entity) continue
  #               value = row[k]
  #               if (value != null) data.properties[part[1]] = value
  #             }
  #             meta = graph[id]
  #             if (/labels|graph/.test(node.meta) && meta) {
  #               data.labels = meta.labels
  #             }
  #             if (/relationships|graph/.test(node.meta) && meta) {
  #               data.id = id
  #               data.relationships = meta.relationships
  #             }
  #             if (/graph/.test(node.meta) && meta) {
  #               result[tokens[0].alias][0].graphs = graphs
  #               data.id = id
  #             }
  #             if (!Object.keys(data.properties).length && node.parent) {
  #               entityPointer[node.parent][entity].pop()
  #             }
  #           }
  #           added[row[j]] = true
  #         }
  #       }
  #     }
  #     return result[tokens[0].alias]
  #   end
  # end
end
