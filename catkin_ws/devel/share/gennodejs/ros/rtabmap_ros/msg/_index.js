
"use strict";

let Goal = require('./Goal.js');
let GPS = require('./GPS.js');
let Info = require('./Info.js');
let KeyPoint = require('./KeyPoint.js');
let Link = require('./Link.js');
let MapData = require('./MapData.js');
let MapGraph = require('./MapGraph.js');
let NodeData = require('./NodeData.js');
let OdomInfo = require('./OdomInfo.js');
let Path = require('./Path.js');
let Point2f = require('./Point2f.js');
let Point3f = require('./Point3f.js');
let RGBDImage = require('./RGBDImage.js');
let UserData = require('./UserData.js');

module.exports = {
  Goal: Goal,
  GPS: GPS,
  Info: Info,
  KeyPoint: KeyPoint,
  Link: Link,
  MapData: MapData,
  MapGraph: MapGraph,
  NodeData: NodeData,
  OdomInfo: OdomInfo,
  Path: Path,
  Point2f: Point2f,
  Point3f: Point3f,
  RGBDImage: RGBDImage,
  UserData: UserData,
};
