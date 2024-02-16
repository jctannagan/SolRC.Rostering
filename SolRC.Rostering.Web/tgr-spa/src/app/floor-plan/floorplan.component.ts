import { Component, OnInit } from '@angular/core';
import { NestedTreeControl } from '@angular/cdk/tree';
import { MatTreeNestedDataSource } from '@angular/material/tree';

/**
 * Food data with nested structure.
 * Each node has a name and an optional list of children.
 */
interface FoodNode {
  name: string;
  children?: FoodNode[];
}

const TREE_DATA: FoodNode[] = [
  {
    name: 'Mass',
    children: [
      { name: 'Pit 1', children: [{name: 'Cluster 1'}, {name: 'Cluster 2'}],},
      { name: 'Pit 2' },
      { name: 'Pit 3' }
    ],
  },
  {
    name: 'VIP',
    children: [
      { name: 'Pit 4', children: [{name: 'Cluster 1'}, {name: 'Cluster 2'}],},
      { name: 'Pit 5' },
      { name: 'Pit 6' }
    ],
  },
];

@Component({
  selector: 'app-floorplan',
  templateUrl: './floorplan.component.html',
  styleUrls: ['./floorplan.component.css']
})
export class FloorPlanComponent implements OnInit {
  treeControl = new NestedTreeControl<FoodNode>(node => node.children);
  dataSource = new MatTreeNestedDataSource<FoodNode>();

  constructor() {
    this.dataSource.data = TREE_DATA;
  }

  hasChild = (_: number, node: FoodNode) => !!node.children && node.children.length > 0;
  
  ngOnInit() {
  }

}
