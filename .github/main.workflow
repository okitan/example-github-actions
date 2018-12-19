workflow "workflow-test" {
  on = "push"
  resolves = ["action-test"]
}

action "action-test" {
  uses = "./"
  runs = "node_modules/.bin/wdio"
}
