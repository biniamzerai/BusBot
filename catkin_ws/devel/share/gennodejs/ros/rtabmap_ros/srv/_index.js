
"use strict";

let GetMap = require('./GetMap.js')
let GetPlan = require('./GetPlan.js')
let ListLabels = require('./ListLabels.js')
let PublishMap = require('./PublishMap.js')
let ResetPose = require('./ResetPose.js')
let SetGoal = require('./SetGoal.js')
let SetLabel = require('./SetLabel.js')

module.exports = {
  GetMap: GetMap,
  GetPlan: GetPlan,
  ListLabels: ListLabels,
  PublishMap: PublishMap,
  ResetPose: ResetPose,
  SetGoal: SetGoal,
  SetLabel: SetLabel,
};
