//
//  CheapestFlight.swift
//  MinimumCostFlow
//
//  Created by Takamiya Kengo on 2021-04-15.
//

//edges: [(u: Int, v: Int, w: Int)]
import Foundation

func cheapFlight( edges: [[Int]], src : Int, dst : Int, num : Int , stop : Int) {
  
  var count = [Int](repeating: 0, count: num+1)
  var dist = [Int](repeating: Int.max, count: num+1)
  var arr = [[(Int,Int)]](repeating: [(Int,Int)](), count: num+1)
  
  dist[src] = 0
  

//  for i in 0...edges.count-1 {
//    arr[edges[i][0]].append((edges[i][1],edges[i][2]))
//  }
  
  for _ in 0..<num-1 {
     // relax all edges
    for edge in edges {
      if dist[edge[1]] > dist[edge[0]] + edge[2] && count[edge[0]] <= stop {
         dist[edge[1]] = dist[edge[0]] + edge[2]
        count[edge[1]] = count[edge[0]] + 1
         
       }
     }
   }
  
  if dist[dst] == Int.max {
    print("-1")
  } else {
    print(dist[dst])
  }
  print(dist)
}
