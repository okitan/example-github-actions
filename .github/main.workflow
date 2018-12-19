workflow "workflow-test" {
  on = "push"
  resolves = ["action-test"]
}

action "action-test" {
  uses = "."
  runs = ".github/scripts/run_test"
}
