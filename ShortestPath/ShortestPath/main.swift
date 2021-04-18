//
//  main.swift
//  ShortestPath
//
//  Created by Takamiya Kengo on 2021-04-15.
//

import Foundation

//var times = [[2,1,1],[2,3,1],[3,4,1]]
//var n = 4
//var k = 2
//
//var times2 = [[1,2,1]]
//var n2 = 2
//var k2 = 1
//
//var times3 = [[1,2,1]]
//var n3 = 2
//var k3 = 2

//Network(network: times3, num: n3, from: k3)

//------------------------------------------------

//var n = 3
//var edges = [[0,1,100],[1,2,100],[0,2,500]]
//var src = 0
//var dst = 2
//var k = 1

//var n = 3
//var edges = [[0,1,100],[1,2,100],[0,2,500]]
//var src = 0
//var dst = 2
//var k = 0
//
//
//cheapFlight(edges: edges ,src: src, dst: dst, num: n, stop: k)

//------------------------------------------------

var  edges = [[0,1,3],[1,2,1],[1,3,4],[2,3,1]]
var distanceThreshold = 4
var n = 4

//var  edges = [[0,1,2],[0,4,8],[1,2,3],[1,4,2],[2,3,1],[3,4,1]]
//var distanceThreshold = 2
//var n = 5

findCity(edges: &edges, disThreshould: distanceThreshold, num: n)


















