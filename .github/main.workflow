workflow "New workflow" {
  on = "push"
  resolves = ["HTTP client"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
}

action "HTTP client" {
  uses = "swinton/httpie.action@69125d73caa2c6821f6a41a86112777a37adc171"
  needs = ["GitHub Action for npm"]
}
