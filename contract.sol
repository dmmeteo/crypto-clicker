pragma solidity >=0.7.0 <0.9.0;

contract Clicker {
  // The player's points
  uint256 public points;

  // Event for when the points are updated
  event PointsUpdated(uint256 newPoints);

  // Constructor to initialize the points
  constructor() public {
    points = 0;
  }

  // Function to add points to the player's total
  function addPoints(uint256 _points) public {
    points += _points;
    emit PointsUpdated(points);
  }
}