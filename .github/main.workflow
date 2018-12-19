workflow "workflow-test" {
  on = "push"
  resolves = ["action-test"]
}

action "action-test" {
  uses = "./"
  runs = "ls node_modules"
}
