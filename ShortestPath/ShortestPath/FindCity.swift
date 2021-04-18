//
//  FindCity.swift
//  ShortestPath
//
//  Created by Takamiya Kengo on 2021-04-16.
//

import Foundation

func findCity (edges :inout [[Int]], disThreshould : Int, num : Int) {
  
  
  func bellmanFord(_ edges: [[Int]], _ n: Int, _ src: Int) -> [Int] {
    var infini = 10000000
    var dist = [Int](repeating: infini, count: n ) // 1-indexed
    dist[src] = 0
    
    for _ in 0..<n-1 {
      for edge in edges {
        if dist[edge[1]] > dist[edge[0]] + edge[2] {
          dist[edge[1]] = dist[edge[0]] + edge[2]
        }
      }
    }
    return dist
  }
  
  var countArr = [Int]()
  var min = Int.max
  var minVertex = 0
  
  for i in 0...edges.count-1 {
    edges.append([edges[i][1],edges[i][0],edges[i][2]])
  }
  
  for i in 0...num-1 {
    var count = 0
    print("\(bellmanFord(edges, num, i))")
    for j in bellmanFord(edges, num, i) {
      if j <= disThreshould && j > 0 {
        count += 1
      }
    }
    countArr.append(count)
  }
  
  for i in 0...countArr.count-1 {
    if countArr[i] <= min {
      min = countArr[i]
      minVertex = i
    }
  }
  print(countArr)
  print(minVertex)
  
}
