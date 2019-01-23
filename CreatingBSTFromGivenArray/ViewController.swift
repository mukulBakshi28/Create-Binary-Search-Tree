//
//  ViewController.swift
//  CreatingBSTFromGivenArray
//
//  Created by MUKUL on 23/01/19.
//  Copyright © 2019 CoderWork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let root =  self.getBSTFromNodeArray(treeArr: [6,5,9,10,11,13,4,3,7,12])
        print("left Sub Node is",root.leftNode?.data)
        print("Right Sub Node is",root.rightNode?.data)
    }
    
    
    func getBSTFromNodeArray(treeArr:[Int]) ->Node{
        let arry = treeArr
        var root = Node()
        root.data = arry[0]
        for nodeData in arry {
            self.createTreeFromNode(root:&root , dataValue: nodeData)
        }
        return root
    }
    
    
    func createTreeFromNode(root:inout Node,dataValue:Int) {
        
        if dataValue < root.data! {
            if root.leftNode != nil {
                self.createTreeFromNode(root: &root.leftNode!, dataValue: dataValue)
            } else {
                root.leftNode =  Node()
                root.leftNode?.data = dataValue
            }
        }
        else {
            if root.rightNode != nil {
                self.createTreeFromNode(root: &root.rightNode!, dataValue: dataValue)
            }
            else {
                root.rightNode = Node()
                root.rightNode?.data = dataValue
            }
        }
    }
}

//Tree Node
class Node {
    var data:Int?
    var leftNode:Node?
    var rightNode:Node?
}
