//
//  NetworkDelayTime.swift
//  ShortestPath
//
//  Created by Takamiya Kengo on 2021-04-15.
//

import Foundation

func Network(network : [[Int]], num : Int, from : Int) {
  
  var check = [Bool](repeating: false, count: num+1)
  var dist = [Int](repeating: 0, count: num+1)
  var arr = [[(Int,Int)]](repeating: [(Int,Int)](), count: num+1)
  check[from] = true
  check[0] = true
  
  for i in 0...network.count-1 {
    arr[network[i][0]].append((network[i][1],network[i][2]))
  }
  
  let q = Queue<Int>()
  
  q.enqueue(item: from)
  
  while !q.isEmpty() {
    
    let u = q.dequeue()
    check[u!] = true
    if arr[u!].count-1 >= 0 {
      for i in 0...arr[u!].count-1 {
        if !check[arr[u!][i].0]{
          dist[arr[u!][i].0] = arr[u!][i].1 + dist[u!]
        }
        q.enqueue(item: arr[u!][i].0)
      }
    }
  }
  
  if let checkList = check.index(of: false) {
    print("-1")
  } else {
    print(dist.max()!)
  }
  
}













