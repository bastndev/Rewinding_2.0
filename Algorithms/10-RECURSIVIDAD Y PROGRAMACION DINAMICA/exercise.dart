class Cell {
  int row, col;

  Cell(this.row, this.col);
}

class RobotInGrid {
  List<Cell> path = [];

  List<Cell>? getPath(List<List<bool>> grid) {
    if (_getPath(grid, 0, 0)) {
      path = path.reversed.toList();
      return path;
    }
    return null;
  }

  bool _getPath(List<List<bool>> grid, int row, int col) {
    if (row >= grid.length || col >= grid[0].length || !grid[row][col]) {
      return false;
    }
    bool isAtFinish = (row == grid.length - 1 && col == grid[0].length - 1);
    if (isAtFinish ||
        _getPath(grid, row, col + 1) ||
        _getPath(grid, row + 1, col)) {
      path.add(Cell(row, col));
      return true;
    }
    grid[row][col] = false;
    return false;
  }
}

void main() {
  RobotInGrid r = RobotInGrid();

  List<List<bool>> grid = [
    [true, true, true, true],
    [false, false, false, true],
    [true, true, false, true],
    [true, true, false, true]
  ];

  List<Cell>? result = r.getPath(grid);

  if (result != null) {
    print("Camino encontrado:");
    result.forEach((cell) {
      print("(${cell.row}, ${cell.col})");
    });
  } else {
    print("No hay camino posible.");
  }
}
