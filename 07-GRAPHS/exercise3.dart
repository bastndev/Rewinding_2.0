//With error :( 
import 'exercise1.dart';
void main() {
  BuildOrder buildOrder = BuildOrder();

  List<String> projects = ["a", "b", "c", "d"];
  List<List<String>> dependencies = [
    ["a", "b"],
    ["a", "c"],
    ["a", "d"],
    ["c", "b"],
    ["d", "b"],
    ["d", "c"]
  ];

  List<String> result = buildOrder.buildOrder(projects, dependencies);
  assert(result == ["a", "d", "c", "b"]);

  List<List<String>> cycleDependencies = [
    ["a", "b"],
    ["b", "c"],
    ["c", "d"],
    ["d", "a"]
  ];

  try {
    buildOrder.buildOrder(projects, cycleDependencies);
  } catch (e) {
    print('Exception: $e'); // Expected exception due to cycle
  }
}

class BuildOrder {
  List<String> buildOrder(
      List<String> projects, List<List<String>> dependencies) {
    Graph graph = _buildDependencyGraph(projects, dependencies);

    List<String> sortedProjects = [];
    for (GraphNode node in graph.nodes.values) {
      _depthSearchFirst(node, sortedProjects);
    }

    sortedProjects = sortedProjects.reversed.toList();
    return sortedProjects;
  }

  void _depthSearchFirst(GraphNode node, List<String> orderedProjects) {
    if (node.status == GraphNodeStatus.Unvisited) {
      // node.status = GraphNodeStatus.Visiting;
      for (GraphNode adjacent in node.adjacent.values) {
        _depthSearchFirst(adjacent, orderedProjects);
      }

      node.status = GraphNodeStatus.Visited;
      orderedProjects.add(node.name);
    } else if (node.status == GraphNodeStatus.Visiting) {
      throw Exception('Found a cycle, cannot be built');
    }
  }

  Graph _buildDependencyGraph(
      List<String> projects, List<List<String>> dependencies) {
    // ignore: unnecessary_null_comparison
    if (dependencies == null || dependencies.isEmpty) {
      // ignore: null_check_always_fails
      return null!;
    }

    Graph graph = Graph();

    for (String project in projects) {
      graph.getOrCreateNode(project);
    }

    // ignore: unused_local_variable
    for (List<String> dep in dependencies) {
      // graph.addEdge(dep[0], dep[1]);
    }
    return graph;
  }
}