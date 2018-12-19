workflow "workflow-test" {
  on = "push"
  resolves = ["action-test"]
}

action "action-test" {
  uses = "./"
  runs = "npm ci; npm test"
}
