import Data.Graph
import Data.Array

-- Función para obtener el camino más corto con el algoritmo de Dijkstra
dijkstra :: Graph -> Vertex -> Array Vertex (Maybe Int)
dijkstra graph start = dijkstra' graph (array (bounds graph) [(v, Nothing) | v <- vertices graph])
  where
    dijkstra' g dist = dist

main :: IO ()
main = do
    let graph = buildG (1, 5) [(1, 2), (1, 3), (2, 4), (3, 5)]
    print $ dijkstra graph 1
