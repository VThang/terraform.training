
```
   ├─ ami
   │  ├─ ami-creation
   │  │  ├─ .terraform
   │  │  ├─ .terraform.lock.hcl
   │  │  ├─ ami.tf
   │  │  ├─ config.tf
   │  │  └─ variables.tf
   │  └─ ami-machine
   │     ├─ .terraform
   │     ├─ .terraform.lock.hcl
   │     ├─ backend.tf
   │     ├─ config.tf
   │     └─ variables.tf
   ├─ build-ami.sh
```
```
terraform.training
├─ .git
│  ├─ COMMITMESSAGE
│  ├─ COMMIT_EDITMSG
│  ├─ FETCH_HEAD
│  ├─ HEAD
│  ├─ ORIG_HEAD
│  ├─ branches
│  ├─ config
│  ├─ description
│  ├─ fork-settings
│  ├─ hooks
│  │  ├─ applypatch-msg.sample
│  │  ├─ commit-msg.sample
│  │  ├─ fsmonitor-watchman.sample
│  │  ├─ post-update.sample
│  │  ├─ pre-applypatch.sample
│  │  ├─ pre-commit.sample
│  │  ├─ pre-merge-commit.sample
│  │  ├─ pre-push.sample
│  │  ├─ pre-rebase.sample
│  │  ├─ pre-receive.sample
│  │  ├─ prepare-commit-msg.sample
│  │  ├─ push-to-checkout.sample
│  │  └─ update.sample
│  ├─ index
│  ├─ info
│  │  └─ exclude
│  ├─ logs
│  │  ├─ HEAD
│  │  └─ refs
│  │     ├─ heads
│  │     │  └─ main
│  │     └─ remotes
│  │        └─ origin
│  │           ├─ HEAD
│  │           └─ main
│  ├─ objects
│  │  ├─ 07
│  │  │  └─ 7b64b8bd429dee6ac76dcfc32c8726701fd1e8
│  │  ├─ 0e
│  │  │  └─ ff8cab90a59d4ee7f7bc4cb7735a1407103cc3
│  │  ├─ 11
│  │  │  └─ 9e448744fe0ab6f4800cae4fd805e4d444d328
│  │  ├─ 12
│  │  │  └─ bd25a3020de9d80365f7e08dc13837c97daa41
│  │  ├─ 14
│  │  │  └─ 76785a4d9e9671fbd73e0acbe13f6881777f09
│  │  ├─ 1a
│  │  │  └─ fc0e6ea4815b74314091ef0d13b2f9de83701d
│  │  ├─ 1e
│  │  │  └─ 2684b0573dec7a97793e97e84e0f3b1ac4ef08
│  │  ├─ 21
│  │  │  └─ 42bd1fba7d00c4117ce5ee2d31420c25c6fa38
│  │  ├─ 22
│  │  │  └─ 0329e6bbd84c0b9d64a2db2360d56f79d43bee
│  │  ├─ 28
│  │  │  └─ d3f761c73bc1814e384b82502ddf9625b34712
│  │  ├─ 32
│  │  │  └─ 3502d470ae167fdaefb847d149b691e9c022fd
│  │  ├─ 42
│  │  │  └─ 5f56fc4bcf1e8d185ec458d6681247fb92f1be
│  │  ├─ 64
│  │  │  └─ b85f8814bf62ce8d0da0163fae4623295ee349
│  │  ├─ 69
│  │  │  ├─ 2ab3369f1d34b12c4fa80e1279e7ac36259b23
│  │  │  └─ a4e8514edbdb15b5fdee7f5b5df4b5ac5226a7
│  │  ├─ 6a
│  │  │  ├─ 5037b811a415fabb4aacd24658807afcb2aac8
│  │  │  └─ 6303e32559ca74d685368aa06892f3bfa3c476
│  │  ├─ 6b
│  │  │  └─ c758d67a23001cdf43993610c7e8d40e6f5fe0
│  │  ├─ 78
│  │  │  ├─ 05453d1252848bf47568e47ee534b2a8056a68
│  │  │  └─ 209daea76d6fd70b8f3706edf433bca9268f4e
│  │  ├─ 7a
│  │  │  └─ 18032453c2ce956a17f9b51c9d067e73e82724
│  │  ├─ 85
│  │  │  └─ 494438f76ff45f4479d95837961740cab7e78e
│  │  ├─ 8d
│  │  │  └─ 43dddea04c20b131cbd092c15851e4201407b8
│  │  ├─ 8f
│  │  │  └─ 0380231c119a3fc1e54d01982a083340ddae24
│  │  ├─ 9c
│  │  │  └─ 53cab2108422acbe907f011c421ac462ad641d
│  │  ├─ 9d
│  │  │  └─ 54c957ba4bd897873a0941c8fc1a212fb236bb
│  │  ├─ a6
│  │  │  └─ 2b21bd7d13ad4e8320301e67f8a2c1b8a8ccd6
│  │  ├─ ac
│  │  │  └─ 552e529d129985338e6881f37a53a62a6d7125
│  │  ├─ af
│  │  │  └─ cdc4a4d267f4c253f059a9c4a8aba82e214d6e
│  │  ├─ b3
│  │  │  └─ 85b7d4426a060c3718b2f9682d5b9a0c11075b
│  │  ├─ b6
│  │  │  └─ 846be4f4fa7a18716f7313f44a6158b3473f24
│  │  ├─ be
│  │  │  └─ 7f6039b714bc20ea062623ff6f10a0d672c958
│  │  ├─ c1
│  │  │  └─ 1f03b4285d1d06c9f1d34597e2bf5ddcc7810e
│  │  ├─ c2
│  │  │  └─ a03b252594091dd6d2e4d273571e0db39cc5f4
│  │  ├─ c8
│  │  │  └─ fda036822ebb8a905dd26f38d1185a927a4a96
│  │  ├─ ca
│  │  │  └─ 1603a50ebf0f1e95325c67e8680355d9e5e8b3
│  │  ├─ d0
│  │  │  └─ 06c1af131e4fff499bd860008c0936be4cbd8c
│  │  ├─ d7
│  │  │  └─ fd0df0e938cef6bd5f527f9279d2808037ed77
│  │  ├─ de
│  │  │  └─ 3c30927ed9e714918accc9798332dc3835f43b
│  │  ├─ e4
│  │  │  └─ f5ef47c8123e978b287781edb97e43e7036545
│  │  ├─ ee
│  │  │  └─ 1b9fc62d8b7b9c0f668cda1aae3ae3720d6b86
│  │  ├─ f4
│  │  │  └─ 4a2e005ffc253efb1592314453a5adccb64c44
│  │  ├─ fa
│  │  │  └─ 10217d717ab44498aeb8ac2931bf748a69bd35
│  │  ├─ fd
│  │  │  └─ d8d207aa0a412675b16cdfdc97aac61d007e7e
│  │  ├─ fe
│  │  │  └─ 632ff423747d93b5b40f9bc164a26a779fb8d7
│  │  ├─ ff
│  │  │  └─ 3e216cd7cc1eece0bd8bf7fd89707e4a5aa65a
│  │  ├─ info
│  │  └─ pack
│  │     ├─ pack-0a1b33918d681c58c657e3b2d045be9b32c7a419.idx
│  │     └─ pack-0a1b33918d681c58c657e3b2d045be9b32c7a419.pack
│  ├─ packed-refs
│  └─ refs
│     ├─ heads
│     │  └─ main
│     ├─ remotes
│     │  └─ origin
│     │     ├─ HEAD
│     │     └─ main
│     └─ tags
├─ .gitignore
├─ .trunk
│  ├─ .gitignore
│  ├─ actions
│  │  ├─ trunk-cache-prune
│  │  │  ├─ 2024-08-16-07-22-53.501.yaml
│  │  │  ├─ 2024-08-16-23-24-45.420.yaml
│  │  │  ├─ 2024-08-17-08-35-56.265.yaml
│  │  │  ├─ 2024-08-18-00-22-02.394.yaml
│  │  │  ├─ 2024-08-18-02-28-03.831.yaml
│  │  │  ├─ 2024-08-18-11-23-53.845.yaml
│  │  │  ├─ 2024-08-18-23-41-28.221.yaml
│  │  │  ├─ 2024-08-19-23-31-11.309.yaml
│  │  │  └─ 2024-08-20-23-51-52.780.yaml
│  │  ├─ trunk-share-with-everyone
│  │  │  ├─ 2024-08-16-07-22-53.503.yaml
│  │  │  ├─ 2024-08-16-23-24-44.938.yaml
│  │  │  ├─ 2024-08-17-08-35-56.318.yaml
│  │  │  ├─ 2024-08-18-00-22-02.397.yaml
│  │  │  ├─ 2024-08-18-02-28-03.840.yaml
│  │  │  ├─ 2024-08-18-11-23-53.853.yaml
│  │  │  ├─ 2024-08-18-23-41-28.225.yaml
│  │  │  ├─ 2024-08-19-23-31-11.313.yaml
│  │  │  └─ 2024-08-20-23-51-52.912.yaml
│  │  ├─ trunk-single-player-auto-on-upgrade
│  │  │  ├─ 2024-08-16-07-28-05.723.yaml
│  │  │  ├─ 2024-08-16-23-29-49.969.yaml
│  │  │  ├─ 2024-08-17-08-41-02.737.yaml
│  │  │  ├─ 2024-08-18-00-27-08.629.yaml
│  │  │  ├─ 2024-08-18-02-33-10.3.yaml
│  │  │  ├─ 2024-08-18-11-28-59.201.yaml
│  │  │  ├─ 2024-08-18-23-46-33.677.yaml
│  │  │  ├─ 2024-08-19-23-36-13.488.yaml
│  │  │  └─ 2024-08-20-23-57-00.804.yaml
│  │  ├─ trunk-single-player-auto-upgrade
│  │  │  ├─ 2024-08-16-08-22-54.780.yaml
│  │  │  ├─ 2024-08-17-00-24-46.3.yaml
│  │  │  ├─ 2024-08-17-09-35-58.774.yaml
│  │  │  ├─ 2024-08-18-01-22-05.175.yaml
│  │  │  ├─ 2024-08-18-03-28-04.962.yaml
│  │  │  ├─ 2024-08-18-12-23-55.293.yaml
│  │  │  ├─ 2024-08-19-00-41-30.324.yaml
│  │  │  └─ 2024-08-20-00-31-10.248.yaml
│  │  ├─ trunk-upgrade-available
│  │  │  ├─ 2024-08-16-23-24-45.642.yaml
│  │  │  ├─ 2024-08-17-00-24-45.246.yaml
│  │  │  ├─ 2024-08-17-01-28-49.716.yaml
│  │  │  ├─ 2024-08-17-02-24-45.533.yaml
│  │  │  ├─ 2024-08-17-03-24-45.231.yaml
│  │  │  ├─ 2024-08-17-04-24-45.592.yaml
│  │  │  ├─ 2024-08-17-05-35-37.369.yaml
│  │  │  ├─ 2024-08-17-08-35-57.605.yaml
│  │  │  ├─ 2024-08-17-09-35-57.619.yaml
│  │  │  ├─ 2024-08-17-14-44-57.251.yaml
│  │  │  ├─ 2024-08-17-14-44-58.597.yaml
│  │  │  ├─ 2024-08-18-00-22-03.790.yaml
│  │  │  ├─ 2024-08-18-01-22-04.603.yaml
│  │  │  ├─ 2024-08-18-02-28-05.564.yaml
│  │  │  ├─ 2024-08-18-03-28-04.621.yaml
│  │  │  ├─ 2024-08-18-04-28-04.780.yaml
│  │  │  ├─ 2024-08-18-07-35-47.511.yaml
│  │  │  ├─ 2024-08-18-08-35-41.597.yaml
│  │  │  ├─ 2024-08-18-09-35-41.839.yaml
│  │  │  ├─ 2024-08-18-10-35-42.12.yaml
│  │  │  ├─ 2024-08-18-23-41-28.781.yaml
│  │  │  ├─ 2024-08-19-00-41-29.225.yaml
│  │  │  ├─ 2024-08-19-02-07-29.255.yaml
│  │  │  ├─ 2024-08-19-02-41-29.251.yaml
│  │  │  ├─ 2024-08-19-03-41-28.703.yaml
│  │  │  ├─ 2024-08-19-04-41-29.5.yaml
│  │  │  ├─ 2024-08-19-23-31-11.312.yaml
│  │  │  ├─ 2024-08-20-00-31-09.3.yaml
│  │  │  ├─ 2024-08-20-01-31-08.671.yaml
│  │  │  ├─ 2024-08-20-02-31-09.6.yaml
│  │  │  ├─ 2024-08-20-03-31-08.614.yaml
│  │  │  ├─ 2024-08-20-04-31-09.218.yaml
│  │  │  └─ 2024-08-20-23-51-57.365.yaml
│  │  └─ trunk-whoami
│  │     ├─ 2024-08-16-08-22-53.861.yaml
│  │     ├─ 2024-08-17-00-24-44.253.yaml
│  │     ├─ 2024-08-17-09-35-56.612.yaml
│  │     ├─ 2024-08-18-01-22-02.441.yaml
│  │     ├─ 2024-08-18-03-28-03.628.yaml
│  │     ├─ 2024-08-18-12-23-54.767.yaml
│  │     ├─ 2024-08-19-00-41-28.459.yaml
│  │     └─ 2024-08-20-00-31-08.429.yaml
│  ├─ logs
│  │  ├─ cli.log
│  │  ├─ daemon.1.log
│  │  ├─ daemon.2.log
│  │  ├─ daemon.3.log
│  │  ├─ daemon.log
│  │  ├─ daemon_stderr.log
│  │  ├─ daemon_stdout.log
│  │  └─ lsp_proxy.log
│  ├─ notifications
│  │  ├─ trunk-share-with-everyone.yaml
│  │  ├─ trunk-share-with-everyone.yaml.lock
│  │  ├─ trunk-upgrade.yaml
│  │  └─ trunk-upgrade.yaml.lock
│  ├─ out
│  ├─ plugins
│  │  └─ trunk
│  │     ├─ .devcontainer.json
│  │     ├─ .editorconfig
│  │     ├─ .git-blame-ignore-revs
│  │     ├─ .gitattributes
│  │     ├─ .github
│  │     │  ├─ actionlint.yaml
│  │     │  ├─ actions
│  │     │  │  ├─ action_tests
│  │     │  │  │  └─ action.yaml
│  │     │  │  ├─ linter_tests
│  │     │  │  │  └─ action.yaml
│  │     │  │  └─ tool_tests
│  │     │  │     └─ action.yaml
│  │     │  ├─ dependabot.yaml
│  │     │  ├─ filters.yaml
│  │     │  ├─ renovate.json5
│  │     │  └─ workflows
│  │     │     ├─ annotate_pr.yaml
│  │     │     ├─ codeql.yml
│  │     │     ├─ nightly.yaml
│  │     │     ├─ pr.yaml
│  │     │     ├─ repo_tests.reusable.yaml
│  │     │     ├─ scorecard.yml
│  │     │     ├─ upgrade_trunk.yaml
│  │     │     ├─ upload_results.reusable.yaml
│  │     │     └─ windows_nightly.yaml
│  │     ├─ .gitignore
│  │     ├─ .trunk
│  │     │  ├─ .gitignore
│  │     │  ├─ setup-ci
│  │     │  │  └─ action.yaml
│  │     │  └─ trunk.yaml
│  │     ├─ .vscode
│  │     │  ├─ extensions.json
│  │     │  └─ settings.json
│  │     ├─ CONTRIBUTING.md
│  │     ├─ LICENSE
│  │     ├─ README.md
│  │     ├─ actions
│  │     │  ├─ buf
│  │     │  │  ├─ README.md
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ commitizen
│  │     │  │  ├─ README.md
│  │     │  │  ├─ package.json
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ commitlint
│  │     │  │  ├─ README.md
│  │     │  │  ├─ commitlint.test.ts
│  │     │  │  ├─ package.json
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ git
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ git-blame-ignore-revs
│  │     │  │  ├─ README.md
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ update_config.sh
│  │     │  ├─ go-mod-tidy
│  │     │  │  ├─ README.md
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ go-mod-tidy-vendor
│  │     │  │  ├─ README.md
│  │     │  │  ├─ go-mod-tidy-vendor.sh
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ hello-world
│  │     │  │  └─ python
│  │     │  │     ├─ README.md
│  │     │  │     ├─ hello
│  │     │  │     ├─ hello_world.test.ts
│  │     │  │     ├─ plugin.yaml
│  │     │  │     └─ requirements.txt
│  │     │  ├─ npm-check
│  │     │  │  ├─ README.md
│  │     │  │  ├─ npm.png
│  │     │  │  ├─ npm_check.js
│  │     │  │  ├─ package.json
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ npm-check-pre-push
│  │     │  │  ├─ npm_check.js
│  │     │  │  ├─ package.json
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ poetry
│  │     │  │  ├─ README.md
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ poetry.test.ts
│  │     │  │  └─ requirements.txt
│  │     │  ├─ trunk
│  │     │  │  └─ plugin.yaml
│  │     │  └─ yarn-check
│  │     │     ├─ README.md
│  │     │     ├─ package.json
│  │     │     ├─ plugin.yaml
│  │     │     ├─ yarn.png
│  │     │     └─ yarn_check.js
│  │     ├─ eslint.config.cjs
│  │     ├─ jest.config.json
│  │     ├─ linters
│  │     │  ├─ actionlint
│  │     │  │  ├─ actionlint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ actionlint_v1.6.21_CUSTOM.check.shot
│  │     │  │     ├─ actionlint_v1.6.26_CUSTOM.check.shot
│  │     │  │     ├─ actionlint_v1.6.9_CUSTOM.check.shot
│  │     │  │     ├─ bad.in.yaml
│  │     │  │     └─ empty.in.yaml
│  │     │  ├─ ansible-lint
│  │     │  │  ├─ README.md
│  │     │  │  ├─ ansible_lint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ ansible_lint_v24.5.0_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v24.5.0_non_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v24.6.0_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v24.6.0_non_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v6.13.0_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v6.13.0_non_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v6.14.3_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v6.14.3_non_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v6.22.1_FQCN.check.shot
│  │     │  │     ├─ ansible_lint_v6.22.1_non_FQCN.check.shot
│  │     │  │     └─ jboss-standalone
│  │     │  │        ├─ LICENSE.md
│  │     │  │        ├─ README.md
│  │     │  │        ├─ demo-aws-launch.yml
│  │     │  │        ├─ deploy-application.yml
│  │     │  │        ├─ group_vars
│  │     │  │        │  └─ all
│  │     │  │        ├─ hosts
│  │     │  │        ├─ roles
│  │     │  │        │  ├─ java-app
│  │     │  │        │  │  ├─ files
│  │     │  │        │  │  │  ├─ jboss-helloworld.war
│  │     │  │        │  │  │  └─ ticket-monster.war
│  │     │  │        │  │  └─ tasks
│  │     │  │        │  │     └─ main.yml
│  │     │  │        │  └─ jboss-standalone
│  │     │  │        │     ├─ files
│  │     │  │        │     │  └─ jboss-as-standalone.sh
│  │     │  │        │     ├─ handlers
│  │     │  │        │     │  └─ main.yml
│  │     │  │        │     ├─ tasks
│  │     │  │        │     │  └─ main.yml
│  │     │  │        │     └─ templates
│  │     │  │        │        ├─ iptables-save
│  │     │  │        │        └─ standalone.xml
│  │     │  │        └─ site.yml
│  │     │  ├─ autopep8
│  │     │  │  ├─ autopep8.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ autopep8_v2.0.4_basic.fmt.shot
│  │     │  │     └─ basic.in.py
│  │     │  ├─ bandit
│  │     │  │  ├─ bandit.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ bandit_v1.7.3_basic.check.shot
│  │     │  │     └─ basic.in.py
│  │     │  ├─ biome
│  │     │  │  ├─ biome.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic_check.in.ts
│  │     │  │     ├─ basic_fmt.in.ts
│  │     │  │     ├─ basic_json.in.json
│  │     │  │     ├─ biome_v1.4.1_basic_check.check.shot
│  │     │  │     ├─ biome_v1.4.1_basic_fmt.fmt.shot
│  │     │  │     ├─ biome_v1.4.1_basic_json.fmt.shot
│  │     │  │     ├─ biome_v1.4.1_error.check.shot
│  │     │  │     ├─ biome_v1.6.0_basic_check.check.shot
│  │     │  │     ├─ biome_v1.6.0_basic_fmt.fmt.shot
│  │     │  │     ├─ biome_v1.6.0_basic_json.fmt.shot
│  │     │  │     └─ biome_v1.6.0_error.check.shot
│  │     │  ├─ black
│  │     │  │  ├─ black.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.py
│  │     │  │     ├─ basic_nb.in.ipynb
│  │     │  │     ├─ black_py_v22.3.0_basic.fmt.shot
│  │     │  │     ├─ black_v22.3.0_basic.fmt.shot
│  │     │  │     └─ black_v22.3.0_basic_nb.fmt.shot
│  │     │  ├─ brakeman
│  │     │  │  ├─ brakeman.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ Gemfile
│  │     │  │     ├─ Gemfile.lock
│  │     │  │     ├─ app
│  │     │  │     │  ├─ empty.rb
│  │     │  │     │  └─ helpers
│  │     │  │     │     └─ users_helper.rb
│  │     │  │     └─ brakeman_v5.4.0_CUSTOM.check.shot
│  │     │  ├─ buf
│  │     │  │  ├─ buf.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ buf_breaking.in.proto
│  │     │  │     ├─ buf_breaking_v1.32.0_basic.check.shot
│  │     │  │     ├─ buf_breaking_v1.32.0_dupFile.check.shot
│  │     │  │     ├─ buf_breaking_v1.5.0_basic.check.shot
│  │     │  │     ├─ buf_breaking_v1.5.0_dupFile.check.shot
│  │     │  │     ├─ buf_breaking_v1.9.0_basic.check.shot
│  │     │  │     ├─ buf_breaking_v1.9.0_dupFile.check.shot
│  │     │  │     ├─ buf_format_v1.17.0_buf_lint.fmt.shot
│  │     │  │     ├─ buf_format_v1.32.0_buf_lint.fmt.shot
│  │     │  │     ├─ buf_lint.in.proto
│  │     │  │     ├─ buf_lint_v1.17.0_buf_lint.check.shot
│  │     │  │     └─ buf_lint_v1.32.0_buf_lint.check.shot
│  │     │  ├─ buildifier
│  │     │  │  ├─ buildifier.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ add_tables.BUILD
│  │     │  │     ├─ basic.bzl
│  │     │  │     ├─ buildifier_v6.1.0_basic_check.check.shot
│  │     │  │     ├─ buildifier_v6.1.0_no_config.test_data.add_tables.BUILD.fmt.shot
│  │     │  │     ├─ buildifier_v6.1.0_no_config.test_data.basic.bzl.fmt.shot
│  │     │  │     ├─ buildifier_v6.1.0_with_config.test_data.add_tables.BUILD.fmt.shot
│  │     │  │     ├─ buildifier_v7.1.0_basic_check.check.shot
│  │     │  │     ├─ buildifier_v7.1.0_no_config.test_data.add_tables.BUILD.fmt.shot
│  │     │  │     ├─ buildifier_v7.1.0_no_config.test_data.basic.bzl.fmt.shot
│  │     │  │     └─ buildifier_v7.1.0_with_config.test_data.add_tables.BUILD.fmt.shot
│  │     │  ├─ cfnlint
│  │     │  │  ├─ cfnlint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.yaml
│  │     │  │     ├─ cfnlint_v0.58.2_basic.check.shot
│  │     │  │     ├─ cfnlint_v1.3.0_basic.check.shot
│  │     │  │     └─ cfnlint_v1.3.2_basic.check.shot
│  │     │  ├─ checkov
│  │     │  │  ├─ checkov.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.tf
│  │     │  │     ├─ basic_kubernetes.in.yaml
│  │     │  │     ├─ checkov_v2.3.259_basic.check.shot
│  │     │  │     ├─ checkov_v2.3.259_basic_kubernetes.check.shot
│  │     │  │     ├─ checkov_v2.3.264_basic.check.shot
│  │     │  │     ├─ checkov_v2.3.264_basic_kubernetes.check.shot
│  │     │  │     ├─ checkov_v2.3.75_basic.check.shot
│  │     │  │     └─ checkov_v2.3.75_basic_kubernetes.check.shot
│  │     │  ├─ circleci
│  │     │  │  ├─ circleci.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ run.sh
│  │     │  │  └─ test_data
│  │     │  │     ├─ bad_version
│  │     │  │     │  └─ .circleci
│  │     │  │     │     └─ config.yml
│  │     │  │     ├─ basic
│  │     │  │     │  └─ .circleci
│  │     │  │     │     └─ config.yml
│  │     │  │     ├─ circleci_v0.1.28811_CUSTOM.check.shot
│  │     │  │     └─ malformed
│  │     │  │        └─ .circleci
│  │     │  │           └─ config.yml
│  │     │  ├─ clang-format
│  │     │  │  ├─ clang_format.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.hh
│  │     │  │     ├─ clang_format_v16.0.3_basic.fmt.shot
│  │     │  │     ├─ clang_format_v16.0.3_cuda.fmt.shot
│  │     │  │     ├─ clang_format_v16.0.3_proto.fmt.shot
│  │     │  │     ├─ cuda.in.cu
│  │     │  │     └─ proto.in.proto
│  │     │  ├─ clang-tidy
│  │     │  │  ├─ .clang-tidy
│  │     │  │  ├─ clang_tidy.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ .clang-tidy
│  │     │  │     ├─ a_includes.cc
│  │     │  │     ├─ b_includes.cc
│  │     │  │     ├─ basic.cc
│  │     │  │     ├─ clang_tidy_v16.0.3_default_config.check.shot
│  │     │  │     ├─ clang_tidy_v16.0.3_test_config.check.shot
│  │     │  │     ├─ compile_commands.json
│  │     │  │     ├─ invalid_case_style.hh
│  │     │  │     └─ test.hh
│  │     │  ├─ clippy
│  │     │  │  ├─ clippy.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ Cargo.lock
│  │     │  │     ├─ Cargo.toml
│  │     │  │     ├─ basic
│  │     │  │     │  └─ main.rs
│  │     │  │     ├─ clippy_v1.65.0_basic.check.shot
│  │     │  │     ├─ clippy_v1.65.0_complex.check.shot
│  │     │  │     ├─ clippy_v1.65.0_complex_subdir.check.shot
│  │     │  │     ├─ clippy_v1.65.0_malformed.check.shot
│  │     │  │     ├─ clippy_v1.65.0_malformed_subdir.check.shot
│  │     │  │     ├─ clippy_v1.65.0_manual_non_exhaustive.check.shot
│  │     │  │     ├─ clippy_v1.65.0_src.main.rs.check.shot
│  │     │  │     ├─ complex
│  │     │  │     │  ├─ high.rs
│  │     │  │     │  ├─ main.rs
│  │     │  │     │  └─ wont_compile.rs
│  │     │  │     ├─ complex_subdir
│  │     │  │     │  └─ src
│  │     │  │     │     ├─ high.rs
│  │     │  │     │     ├─ main.rs
│  │     │  │     │     └─ wont_compile.rs
│  │     │  │     ├─ malformed
│  │     │  │     │  └─ main.rs
│  │     │  │     └─ malformed_subdir
│  │     │  │        └─ src
│  │     │  │           └─ main.rs
│  │     │  ├─ cmake-format
│  │     │  │  ├─ cmake-format.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ cmake_format_v0.6.13_test1.fmt.shot
│  │     │  │     ├─ cmake_format_v0.6.13_test2.fmt.shot
│  │     │  │     ├─ test1.in.cmake
│  │     │  │     └─ test2.in.cmake
│  │     │  ├─ codespell
│  │     │  │  ├─ codespell.test.ts
│  │     │  │  ├─ codespell_to_sarif.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic_md.in.md
│  │     │  │     ├─ basic_py.in.py
│  │     │  │     ├─ basic_ts.in.ts
│  │     │  │     ├─ codespell_v2.2.2_basic.check.shot
│  │     │  │     ├─ codespell_v2.2.2_dictionary.check.shot
│  │     │  │     ├─ codespell_v2.2.4_basic.check.shot
│  │     │  │     ├─ codespell_v2.2.4_dictionary.check.shot
│  │     │  │     ├─ codespell_v2.2.6_basic.check.shot
│  │     │  │     ├─ codespell_v2.2.6_dictionary.check.shot
│  │     │  │     ├─ codespell_v2.3.0_basic.check.shot
│  │     │  │     ├─ codespell_v2.3.0_dictionary.check.shot
│  │     │  │     └─ empty.in.txt
│  │     │  ├─ cspell
│  │     │  │  ├─ cspell.test.ts
│  │     │  │  ├─ cspell.yaml
│  │     │  │  ├─ expected_basic_issues.json
│  │     │  │  ├─ expected_dictionary_issues.json
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic_md.in.md
│  │     │  │     ├─ basic_py.in.py
│  │     │  │     ├─ basic_ts.in.ts
│  │     │  │     ├─ cspell_v7.0.0_basic.check.shot
│  │     │  │     ├─ cspell_v7.0.0_dictionary.check.shot
│  │     │  │     └─ empty.in.txt
│  │     │  ├─ cue-fmt
│  │     │  │  ├─ cue_fmt.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.cue
│  │     │  │     └─ cue_fmt_v0.5.0_basic.fmt.shot
│  │     │  ├─ dart
│  │     │  │  ├─ dart.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ analysis_options.yaml
│  │     │  │     ├─ basic.in.dart
│  │     │  │     ├─ dart_v3.2.6_basic.check.shot
│  │     │  │     ├─ dart_v3.2.6_test_data.basic.in.dart.check.shot
│  │     │  │     └─ pubspec.yaml
│  │     │  ├─ deno
│  │     │  │  ├─ deno.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.js
│  │     │  │     └─ deno_v1.36.4_basic.fmt.shot
│  │     │  ├─ detekt
│  │     │  │  ├─ detekt.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic_detekt.in.kt
│  │     │  │     ├─ basic_explicit.in.kt
│  │     │  │     ├─ detekt_explicit_v1.19.0_basic_explicit.check.shot
│  │     │  │     ├─ detekt_explicit_v1.21.0_basic_explicit.check.shot
│  │     │  │     ├─ detekt_gradle
│  │     │  │     │  ├─ .gitignore
│  │     │  │     │  ├─ gradle
│  │     │  │     │  │  └─ wrapper
│  │     │  │     │  │     ├─ gradle-wrapper.jar
│  │     │  │     │  │     └─ gradle-wrapper.properties
│  │     │  │     │  ├─ gradlew
│  │     │  │     │  ├─ gradlew.bat
│  │     │  │     │  ├─ lib
│  │     │  │     │  │  ├─ build.gradle.kts
│  │     │  │     │  │  ├─ no-potential-bugs.detekt.yaml
│  │     │  │     │  │  ├─ potential-bugs.detekt.yaml
│  │     │  │     │  │  └─ src
│  │     │  │     │  │     └─ main
│  │     │  │     │  │        └─ kotlin
│  │     │  │     │  │           └─ detekt_gradle
│  │     │  │     │  │              └─ Library.kt
│  │     │  │     │  └─ settings.gradle.kts
│  │     │  │     ├─ detekt_gradle_CUSTOM.check.shot
│  │     │  │     ├─ detekt_v1.19.0_basic_detekt.check.shot
│  │     │  │     └─ detekt_v1.21.0_basic_detekt.check.shot
│  │     │  ├─ djlint
│  │     │  │  ├─ .djlintrc
│  │     │  │  ├─ README.md
│  │     │  │  ├─ djlint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ djlint_v1.19.16_logout.check.shot
│  │     │  │     ├─ djlint_v1.19.16_logout.fmt.shot
│  │     │  │     ├─ djlint_v1.19.17_logout.check.shot
│  │     │  │     ├─ djlint_v1.19.17_logout.fmt.shot
│  │     │  │     ├─ djlint_v1.22.0_logout.check.shot
│  │     │  │     ├─ djlint_v1.22.0_logout.fmt.shot
│  │     │  │     └─ logout.in.html
│  │     │  ├─ dotenv-linter
│  │     │  │  ├─ dotenv_linter.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.env
│  │     │  │     └─ dotenv_linter_v3.3.0_basic.fmt.shot
│  │     │  ├─ dotnet-format
│  │     │  │  ├─ dotnet_format.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic
│  │     │  │     │  ├─ Program.cs
│  │     │  │     │  ├─ basic.csproj
│  │     │  │     │  ├─ basic.in.cs
│  │     │  │     │  └─ obj
│  │     │  │     │     ├─ Debug
│  │     │  │     │     │  └─ net7.0
│  │     │  │     │     │     ├─ .NETCoreApp,Version=v7.0.AssemblyAttributes.cs
│  │     │  │     │     │     ├─ basic.AssemblyInfo.cs
│  │     │  │     │     │     └─ basic.GlobalUsings.g.cs
│  │     │  │     │     └─ basic.csproj.nuget.g.targets
│  │     │  │     ├─ dotnet_format_v7.0.400_CUSTOM.test_data.basic.Program.cs.fmt.shot
│  │     │  │     ├─ dotnet_format_v7.0.400_CUSTOM.test_data.basic.basic.in.cs.fmt.shot
│  │     │  │     ├─ dotnet_format_v7.0.400_CUSTOM.test_data.second_one.Program.cs.fmt.shot
│  │     │  │     ├─ example_solution.sln
│  │     │  │     └─ second_one
│  │     │  │        ├─ Program.cs
│  │     │  │        └─ second_one.csproj
│  │     │  ├─ dustilock
│  │     │  │  ├─ dustilock.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ dustilock_v1.2.0_CUSTOM.check.shot
│  │     │  │     ├─ package.json
│  │     │  │     └─ requirements.txt
│  │     │  ├─ eslint
│  │     │  │  ├─ README.md
│  │     │  │  ├─ eslint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ .eslintrc.yaml
│  │     │  │     ├─ eof_autofix.ts
│  │     │  │     ├─ eslint.config.cjs
│  │     │  │     ├─ eslint_v8.10.0_CUSTOM.check.shot
│  │     │  │     ├─ eslint_v8.10.0_bad_install.check.shot
│  │     │  │     ├─ eslint_v8.10.0_test_data.eof_autofix.ts.check.shot
│  │     │  │     ├─ eslint_v8.10.0_test_data.format_imports.ts.check.shot
│  │     │  │     ├─ eslint_v8.10.0_test_data.non_ascii.ts.check.shot
│  │     │  │     ├─ eslint_v9.0.0_CUSTOM.check.shot
│  │     │  │     ├─ eslint_v9.0.0_bad_install.check.shot
│  │     │  │     ├─ eslint_v9.0.0_test_data.eof_autofix.ts.check.shot
│  │     │  │     ├─ eslint_v9.0.0_test_data.format_imports.ts.check.shot
│  │     │  │     ├─ eslint_v9.0.0_test_data.non_ascii.ts.check.shot
│  │     │  │     ├─ format_imports.ts
│  │     │  │     ├─ non_ascii.ts
│  │     │  │     ├─ null_rule_id.ts
│  │     │  │     ├─ package-lock-new.json
│  │     │  │     ├─ package-lock-old.json
│  │     │  │     ├─ package-new.json
│  │     │  │     └─ package-old.json
│  │     │  ├─ flake8
│  │     │  │  ├─ .flake8
│  │     │  │  ├─ flake8.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.py
│  │     │  │     └─ flake8_v4.0.1_basic.check.shot
│  │     │  ├─ git-diff-check
│  │     │  │  ├─ git_diff_check.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.txt
│  │     │  │     ├─ conflict.in.txt
│  │     │  │     ├─ git_diff_check_basic.check.shot
│  │     │  │     └─ git_diff_check_conflict.check.shot
│  │     │  ├─ gitleaks
│  │     │  │  ├─ gitleaks.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.py
│  │     │  │     ├─ gitleaks_v8.1.3_basic.check.shot
│  │     │  │     └─ gitleaks_v8.8.7_basic.check.shot
│  │     │  ├─ gofmt
│  │     │  │  ├─ gofmt.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.go
│  │     │  │     ├─ empty.in.go
│  │     │  │     ├─ gofmt_v1.20.4_basic.fmt.shot
│  │     │  │     └─ gofmt_v1.20.4_empty.check.shot
│  │     │  ├─ gofumpt
│  │     │  │  ├─ gofumpt.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.go
│  │     │  │     ├─ empty.in.go
│  │     │  │     ├─ gofumpt.in.go
│  │     │  │     ├─ gofumpt_v0.5.0_basic.fmt.shot
│  │     │  │     ├─ gofumpt_v0.5.0_empty.check.shot
│  │     │  │     └─ gofumpt_v0.5.0_gofumpt.fmt.shot
│  │     │  ├─ goimports
│  │     │  │  ├─ goimports.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.go
│  │     │  │     ├─ empty.in.go
│  │     │  │     ├─ goimports_v0.9.1_basic.fmt.shot
│  │     │  │     └─ goimports_v0.9.1_empty.check.shot
│  │     │  ├─ gokart
│  │     │  │  ├─ analyzers.yml
│  │     │  │  ├─ gokart.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ go.mod
│  │     │  │     ├─ gokart_v0.5.1_CUSTOM.check.shot
│  │     │  │     ├─ path_traversal
│  │     │  │     │  └─ path_traversal.in.go
│  │     │  │     └─ sql_injection
│  │     │  │        └─ sql_injection.in.go
│  │     │  ├─ golangci-lint
│  │     │  │  ├─ golangci_lint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ .golangci.yml
│  │     │  │     ├─ basic.go
│  │     │  │     ├─ go.mod
│  │     │  │     ├─ golangci_lint_v1.49.0_all.check.shot
│  │     │  │     ├─ golangci_lint_v1.49.0_empty.check.shot
│  │     │  │     ├─ golangci_lint_v1.49.0_unbuildable.check.shot
│  │     │  │     ├─ golangci_lint_v1.57.0_all.check.shot
│  │     │  │     ├─ golangci_lint_v1.57.0_empty.check.shot
│  │     │  │     ├─ golangci_lint_v1.57.0_unbuildable.check.shot
│  │     │  │     ├─ unbuildable.go
│  │     │  │     ├─ unused_func.go
│  │     │  │     └─ wrapper
│  │     │  │        ├─ printer.go
│  │     │  │        └─ wrapper.go
│  │     │  ├─ golines
│  │     │  │  ├─ golines.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.go
│  │     │  │     ├─ empty.in.go
│  │     │  │     ├─ golines_v0.11.0_basic.fmt.shot
│  │     │  │     └─ golines_v0.11.0_empty.check.shot
│  │     │  ├─ google-java-format
│  │     │  │  ├─ google-java-format.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ c.in.java
│  │     │  │     ├─ e.in.java
│  │     │  │     ├─ google_java_format_v1.15.0_c.fmt.shot
│  │     │  │     └─ google_java_format_v1.15.0_e.fmt.shot
│  │     │  ├─ graphql-schema-linter
│  │     │  │  ├─ graphql_schema_linter.test.ts
│  │     │  │  ├─ parse.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ comment.in.graphqls
│  │     │  │     ├─ graphql_schema_linter_v3.0.1_comment.check.shot
│  │     │  │     ├─ graphql_schema_linter_v3.0.1_invalid-ast.check.shot
│  │     │  │     ├─ graphql_schema_linter_v3.0.1_user.check.shot
│  │     │  │     ├─ invalid-ast.in.graphqls
│  │     │  │     └─ user.in.graphqls
│  │     │  ├─ hadolint
│  │     │  │  ├─ .hadolint.yaml
│  │     │  │  ├─ hadolint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ Dockerfile
│  │     │  │     ├─ Dockerfile.empty
│  │     │  │     ├─ basic.Dockerfile
│  │     │  │     ├─ empty.Dockerfile
│  │     │  │     ├─ hadolint_v2.10.0_CUSTOM.check.shot
│  │     │  │     └─ nested
│  │     │  │        ├─ Dockerfile.debug
│  │     │  │        ├─ dockerfile
│  │     │  │        ├─ not-dockerfile
│  │     │  │        ├─ prefix.Dockerfile
│  │     │  │        └─ prefix.Dockerfile.debug
│  │     │  ├─ haml-lint
│  │     │  │  ├─ haml_lint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.haml
│  │     │  │     ├─ empty.haml
│  │     │  │     └─ haml_lint_v0.40.0_CUSTOM.check.shot
│  │     │  ├─ isort
│  │     │  │  ├─ .isort.cfg
│  │     │  │  ├─ isort.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.py
│  │     │  │     └─ isort_v5.9.3_basic.fmt.shot
│  │     │  ├─ iwyu
│  │     │  │  ├─ iwyu.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ a.hh
│  │     │  │     ├─ b.hh
│  │     │  │     ├─ c.hh
│  │     │  │     ├─ compile_commands.json
│  │     │  │     ├─ include_what_you_use_v0.20_CUSTOM.check.shot
│  │     │  │     ├─ include_what_you_use_v0.20_test_data.test.cc.check.shot
│  │     │  │     └─ test.cc
│  │     │  ├─ ktlint
│  │     │  │  ├─ ktlint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.kt
│  │     │  │     ├─ complex.in.kt
│  │     │  │     ├─ ktlint_v0.43.2_basic.fmt.shot
│  │     │  │     ├─ ktlint_v0.43.2_complex.fmt.shot
│  │     │  │     ├─ ktlint_v0.43.2_utf8.fmt.shot
│  │     │  │     ├─ ktlint_v0.48.0_basic.fmt.shot
│  │     │  │     ├─ ktlint_v0.48.0_complex.fmt.shot
│  │     │  │     ├─ ktlint_v0.48.0_utf8.fmt.shot
│  │     │  │     ├─ ktlint_v1.0.0_basic.fmt.shot
│  │     │  │     ├─ ktlint_v1.0.0_complex.fmt.shot
│  │     │  │     ├─ ktlint_v1.0.0_utf8.fmt.shot
│  │     │  │     └─ utf8.in.kt
│  │     │  ├─ kube-linter
│  │     │  │  ├─ kube_linter.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.yaml
│  │     │  │     └─ kube_linter_v0.6.4_basic.check.shot
│  │     │  ├─ markdown-link-check
│  │     │  │  ├─ markdown-link-check.test.ts
│  │     │  │  ├─ parse.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.md
│  │     │  │     └─ markdown_link_check_v3.11.2_basic.check.shot
│  │     │  ├─ markdown-table-prettify
│  │     │  │  ├─ markdown_table_prettify.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.md
│  │     │  │     └─ markdown_table_prettify_v3.6.0_basic.fmt.shot
│  │     │  ├─ markdownlint
│  │     │  │  ├─ .markdownlint.yaml
│  │     │  │  ├─ markdownlint.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.md
│  │     │  │     └─ markdownlint_v0.33.0_basic.check.shot
│  │     │  ├─ mypy
│  │     │  │  ├─ mypy.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ __init__.py
│  │     │  │     ├─ basic.py
│  │     │  │     ├─ mypy_v0.931_CUSTOM.check.shot
│  │     │  │     ├─ mypy_v0.990_CUSTOM.check.shot
│  │     │  │     ├─ mypy_v1.10.0_CUSTOM.check.shot
│  │     │  │     ├─ mypy_v1.6.0_CUSTOM.check.shot
│  │     │  │     ├─ mypy_v1.7.0_CUSTOM.check.shot
│  │     │  │     └─ source.py
│  │     │  ├─ nancy
│  │     │  │  ├─ expected_issues.json
│  │     │  │  ├─ nancy.test.ts
│  │     │  │  ├─ parse.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ run.sh
│  │     │  │  └─ test_data
│  │     │  │     ├─ Gopkg.lock
│  │     │  │     ├─ Gopkg.toml
│  │     │  │     ├─ README.md
│  │     │  │     ├─ go.mod
│  │     │  │     ├─ go.sum
│  │     │  │     ├─ main.go
│  │     │  │     └─ nancy_v1.0.41_CUSTOM.check.shot
│  │     │  ├─ nixpkgs-fmt
│  │     │  │  ├─ nixpkgs_fmt.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ nixpkgs_fmt_v1.3.0_test.fmt.shot
│  │     │  │     └─ test.in.nix
│  │     │  ├─ opa
│  │     │  │  ├─ opa.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.rego
│  │     │  │     └─ opa_v0.62.1_basic.fmt.shot
│  │     │  ├─ osv-scanner
│  │     │  │  ├─ expected_issues.json
│  │     │  │  ├─ osv_scanner.test.ts
│  │     │  │  ├─ osv_to_sarif.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ Cargo.lock
│  │     │  │     ├─ Gemfile.lock
│  │     │  │     ├─ composer.lock
│  │     │  │     ├─ go.mod
│  │     │  │     ├─ go.sum
│  │     │  │     ├─ osv_scanner_v1.3.6_CUSTOM.check.shot
│  │     │  │     ├─ requirements.txt
│  │     │  │     └─ yarn.lock
│  │     │  ├─ oxipng
│  │     │  │  ├─ oxipng.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ bad.png
│  │     │  │     ├─ empty.txt
│  │     │  │     ├─ good.png
│  │     │  │     ├─ oxipng_v7.0.0_basic.test_data.empty.txt.fmt.shot
│  │     │  │     └─ oxipng_v7.0.0_malformed.check.shot
│  │     │  ├─ perlcritic
│  │     │  │  ├─ .perlcriticrc
│  │     │  │  ├─ perlcritic.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.pl
│  │     │  │     └─ perlcritic_basic.check.shot
│  │     │  ├─ perltidy
│  │     │  │  ├─ .perltidyrc
│  │     │  │  ├─ perltidy.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.pl
│  │     │  │     └─ perltidy_basic.fmt.shot
│  │     │  ├─ php-cs-fixer
│  │     │  │  ├─ php-cs-fixer.test.ts
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.php
│  │     │  │     └─ php_cs_fixer_v3.54.0_basic.fmt.shot
│  │     │  ├─ phpstan
│  │     │  │  ├─ phpstan.test.ts
│  │     │  │  ├─ phpstan_parser.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.php
│  │     │  │     └─ phpstan_v1.10.58_basic.check.shot
│  │     │  ├─ plugin.yaml
│  │     │  ├─ pmd
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ pmd.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ apex.in.cls
│  │     │  │     ├─ hello.in.java
│  │     │  │     ├─ pmd_v6.55.0_CUSTOM.check.shot
│  │     │  │     └─ pmd_v7.0.0_CUSTOM.check.shot
│  │     │  ├─ pragma-once
│  │     │  │  ├─ README.md
│  │     │  │  ├─ fix.sh
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ pragma_once.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.hh
│  │     │  │     └─ pragma_once_basic.fmt.shot
│  │     │  ├─ pre-commit-hooks
│  │     │  │  ├─ README.md
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ pre_commit_hooks.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ end-of-file-fixer.in.txt
│  │     │  │     └─ pre_commit_hooks_v4.4.0_end-of-file-fixer.fmt.shot
│  │     │  ├─ prettier
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ prettier.test.ts
│  │     │  │  ├─ prettier_to_sarif.py
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.yaml
│  │     │  │     ├─ error.in.yaml
│  │     │  │     ├─ prettier_v2.6.2_basic.check.shot
│  │     │  │     ├─ prettier_v2.6.2_basic.fmt.shot
│  │     │  │     ├─ prettier_v2.6.2_error.check.shot
│  │     │  │     └─ prettier_v2.6.2_error.fmt.shot
│  │     │  ├─ prisma
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ prisma.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ prisma_v4.16.1_test0.fmt.shot
│  │     │  │     └─ test0.in.prisma
│  │     │  ├─ psscriptanalyzer
│  │     │  │  ├─ README.md
│  │     │  │  ├─ format.ps1
│  │     │  │  ├─ lint.ps1
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ psscriptanalyzer.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ check.in.ps1
│  │     │  │     ├─ format.in.ps1
│  │     │  │     ├─ psscriptanalyzer_v1.21.0_check.check.shot
│  │     │  │     ├─ psscriptanalyzer_v1.21.0_check_custom_settings.check.shot
│  │     │  │     └─ psscriptanalyzer_v1.21.0_format.fmt.shot
│  │     │  ├─ pylint
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ pylint.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ .pylintrc
│  │     │  │     ├─ basic.in.py
│  │     │  │     ├─ empty.in.py
│  │     │  │     ├─ pylint_v2.11.1_basic.check.shot
│  │     │  │     ├─ pylint_v2.11.1_config.check.shot
│  │     │  │     ├─ pylint_v2.11.1_empty.check.shot
│  │     │  │     └─ severity.py
│  │     │  ├─ pyright
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ pyright.test.ts
│  │     │  │  ├─ pyright_to_sarif.py
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.py
│  │     │  │     ├─ pyright_v1.1.304_basic.check.shot
│  │     │  │     ├─ pyright_v1.1.315_basic.check.shot
│  │     │  │     ├─ pyright_v1.1.321_basic.check.shot
│  │     │  │     ├─ pyright_v1.1.334_basic.check.shot
│  │     │  │     ├─ pyright_v1.1.348_basic.check.shot
│  │     │  │     └─ pyright_v1.1.359_basic.check.shot
│  │     │  ├─ regal
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ regal.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.rego
│  │     │  │     ├─ regal_v0.18.0_basic.check.shot
│  │     │  │     ├─ regal_v0.21.0_basic.check.shot
│  │     │  │     └─ regal_v0.25.0_basic.check.shot
│  │     │  ├─ remark-lint
│  │     │  │  ├─ .remarkrc.yaml
│  │     │  │  ├─ parse.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ remark_lint.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.md
│  │     │  │     ├─ remark_lint_v11.0.0_basic.check.shot
│  │     │  │     ├─ remark_lint_v11.0.0_basic.fmt.shot
│  │     │  │     ├─ remark_lint_v12.0.0_basic.check.shot
│  │     │  │     └─ remark_lint_v12.0.0_basic.fmt.shot
│  │     │  ├─ renovate
│  │     │  │  ├─ parse.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ renovate.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ .renovaterc.json
│  │     │  │     ├─ renovate.json
│  │     │  │     ├─ renovate.json5
│  │     │  │     └─ renovate_v34.122.0_CUSTOM.check.shot
│  │     │  ├─ rome
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ rome.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic_check.in.ts
│  │     │  │     ├─ basic_fmt.in.ts
│  │     │  │     ├─ rome_v10.0.1_basic_check.check.shot
│  │     │  │     ├─ rome_v10.0.1_basic_fmt.fmt.shot
│  │     │  │     ├─ rome_v11.0.0_basic_check.check.shot
│  │     │  │     ├─ rome_v11.0.0_basic_fmt.fmt.shot
│  │     │  │     ├─ rome_v12.0.0_basic_check.check.shot
│  │     │  │     ├─ rome_v12.0.0_basic_fmt.fmt.shot
│  │     │  │     ├─ rome_v12.1.0_basic_check.check.shot
│  │     │  │     └─ rome_v12.1.0_basic_fmt.fmt.shot
│  │     │  ├─ rubocop
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ rubocop.test.ts
│  │     │  │  ├─ rubocop_to_sarif.py
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.rb
│  │     │  │     ├─ rubocop_v1.39.0_basic.check.shot
│  │     │  │     └─ rubocop_v1.39.0_basic.test_data.basic.rb.fmt.shot
│  │     │  ├─ ruff
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ ruff.test.ts
│  │     │  │  ├─ ruff.toml
│  │     │  │  ├─ ruff_to_sarif.py
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.py
│  │     │  │     ├─ basic_nb.in.ipynb
│  │     │  │     ├─ format.in.py
│  │     │  │     ├─ interface.in.pyi
│  │     │  │     ├─ ruff_nbqa_v0.0.250_basic_nb.check.shot
│  │     │  │     ├─ ruff_nbqa_v0.1.0_basic_nb.check.shot
│  │     │  │     ├─ ruff_nbqa_v0.5.0_basic_nb.check.shot
│  │     │  │     ├─ ruff_v0.0.250_basic.check.shot
│  │     │  │     ├─ ruff_v0.0.250_interface.check.shot
│  │     │  │     ├─ ruff_v0.1.0_basic.check.shot
│  │     │  │     ├─ ruff_v0.2.1_basic_nb.check.shot
│  │     │  │     ├─ ruff_v0.2.1_format.fmt.shot
│  │     │  │     └─ ruff_v0.6.0_basic_nb.check.shot
│  │     │  ├─ rufo
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ rufo.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.rb
│  │     │  │     ├─ empty.rb
│  │     │  │     ├─ rufo_v0.13.0_basic.test_data.basic.rb.fmt.shot
│  │     │  │     └─ rufo_v0.13.0_empty.check.shot
│  │     │  ├─ rustfmt
│  │     │  │  ├─ .rustfmt.toml
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ rustfmt.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.rs
│  │     │  │     ├─ empty.in.rs
│  │     │  │     ├─ rustfmt_v1.65.0_basic.fmt.shot
│  │     │  │     └─ rustfmt_v1.65.0_empty.check.shot
│  │     │  ├─ scalafmt
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ scalafmt.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.scala
│  │     │  │     ├─ empty.in.scala
│  │     │  │     ├─ scalafmt_v3.4.3_basic.fmt.shot
│  │     │  │     └─ scalafmt_v3.4.3_empty.check.shot
│  │     │  ├─ semgrep
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ semgrep.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.go
│  │     │  │     ├─ element.ts
│  │     │  │     ├─ empty_go.go
│  │     │  │     ├─ empty_js.js
│  │     │  │     ├─ empty_py.py
│  │     │  │     ├─ request.py
│  │     │  │     └─ semgrep_v1.33.2_CUSTOM.check.shot
│  │     │  ├─ shellcheck
│  │     │  │  ├─ .shellcheckrc
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ shellcheck.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.sh
│  │     │  │     ├─ empty.in.sh
│  │     │  │     ├─ shellcheck_v0.8.0_basic.check.shot
│  │     │  │     ├─ shellcheck_v0.8.0_empty.check.shot
│  │     │  │     ├─ shellcheck_v0.8.0_unicode.check.shot
│  │     │  │     ├─ shellcheck_v0.9.0_basic.check.shot
│  │     │  │     ├─ shellcheck_v0.9.0_empty.check.shot
│  │     │  │     ├─ shellcheck_v0.9.0_unicode.check.shot
│  │     │  │     └─ unicode.in.sh
│  │     │  ├─ shfmt
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ shfmt.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.sh
│  │     │  │     ├─ empty.in.sh
│  │     │  │     ├─ shfmt_v3.6.0_basic.check.shot
│  │     │  │     ├─ shfmt_v3.6.0_basic.fmt.shot
│  │     │  │     └─ shfmt_v3.6.0_empty.check.shot
│  │     │  ├─ sort-package-json
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ sort_package_json.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ bad_package.json
│  │     │  │     ├─ package.json
│  │     │  │     ├─ sort_package_json_v2.1.0_CUSTOM.check.shot
│  │     │  │     └─ sort_package_json_v2.1.0_basic.test_data.package.json.fmt.shot
│  │     │  ├─ sourcery
│  │     │  │  ├─ README.md
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ sourcery.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ _plugin.yaml
│  │     │  │     ├─ basic.in.py
│  │     │  │     ├─ sourcery_v1.10.1_CUSTOM.check.shot
│  │     │  │     └─ sourcery_v1.2.0_CUSTOM.check.shot
│  │     │  ├─ sql-formatter
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ sql_formatter.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.sql
│  │     │  │     ├─ empty.in.sql
│  │     │  │     ├─ sql_formatter_v7.0.1_basic.fmt.shot
│  │     │  │     └─ sql_formatter_v7.0.1_empty.check.shot
│  │     │  ├─ sqlfluff
│  │     │  │  ├─ .sqlfluff
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ sqlfluff.test.ts
│  │     │  │  ├─ sqlfluff_to_sarif.py
│  │     │  │  └─ test_data
│  │     │  │     ├─ bad.ddl
│  │     │  │     ├─ bad.sql
│  │     │  │     ├─ bad.sql.j2
│  │     │  │     ├─ basic_check.in.sql
│  │     │  │     ├─ basic_fmt.in.sql
│  │     │  │     ├─ sqlfluff_v1.4.2_basic_check.check.shot
│  │     │  │     ├─ sqlfluff_v1.4.2_basic_check.fmt.shot
│  │     │  │     ├─ sqlfluff_v1.4.2_basic_fmt.fmt.shot
│  │     │  │     ├─ sqlfluff_v1.4.4_basic_check.check.shot
│  │     │  │     ├─ sqlfluff_v2.0.0_basic_check.check.shot
│  │     │  │     ├─ sqlfluff_v2.0.0_basic_check.fmt.shot
│  │     │  │     ├─ sqlfluff_v2.0.0_basic_fmt.fmt.shot
│  │     │  │     ├─ sqlfluff_v3.0.0_basic_check.check.shot
│  │     │  │     ├─ sqlfluff_v3.0.0_basic_check.fmt.shot
│  │     │  │     └─ sqlfluff_v3.0.0_basic_fmt.fmt.shot
│  │     │  ├─ sqlfmt
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ sqlfmt.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.sql
│  │     │  │     ├─ empty.in.sql
│  │     │  │     ├─ sqlfmt_v0.16.0_basic.fmt.shot
│  │     │  │     └─ sqlfmt_v0.16.0_empty.fmt.shot
│  │     │  ├─ standardrb
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ standardrb.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.rb
│  │     │  │     ├─ standardrb_v1.3.0_basic.check.shot
│  │     │  │     └─ standardrb_v1.3.0_basic.fmt.shot
│  │     │  ├─ stringslint
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ stringslint.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ Localizable.strings
│  │     │  │     ├─ basic.swift
│  │     │  │     └─ stringslint_v0.1.1_CUSTOM.check.shot
│  │     │  ├─ stylelint
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ stylelint.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.css
│  │     │  │     ├─ stylelint_v14.6.1_basic.check.shot
│  │     │  │     ├─ stylelint_v14.6.1_basic.fmt.shot
│  │     │  │     ├─ stylelint_v16.0.1_basic.check.shot
│  │     │  │     └─ stylelint_v16.0.1_basic.fmt.shot
│  │     │  ├─ stylua
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ stylua.test.ts
│  │     │  │  ├─ stylua.toml
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.lua
│  │     │  │     ├─ empty.in.lua
│  │     │  │     ├─ stylua_v0.17.0_basic.fmt.shot
│  │     │  │     └─ stylua_v0.17.0_empty.fmt.shot
│  │     │  ├─ svgo
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ svgo.config.js
│  │     │  │  ├─ svgo.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.in.svg
│  │     │  │     ├─ svgo_v2.8.0_basic.fmt.shot
│  │     │  │     └─ svgo_v3.0.0_basic.fmt.shot
│  │     │  ├─ swiftformat
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ swiftformat.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.swift
│  │     │  │     └─ swiftformat_v0.50.0_basic.test_data.basic.swift.fmt.shot
│  │     │  ├─ swiftlint
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ swiftlint.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ basic.swift
│  │     │  │     ├─ swiftlint_v0.49.1_basic.check.shot
│  │     │  │     ├─ swiftlint_v0.49.1_nested_configs.check.shot
│  │     │  │     ├─ swiftlint_v0.51.0_basic.check.shot
│  │     │  │     ├─ swiftlint_v0.51.0_nested_configs.check.shot
│  │     │  │     ├─ swiftlint_v0.55.0_basic.check.shot
│  │     │  │     └─ swiftlint_v0.55.0_nested_configs.check.shot
│  │     │  ├─ taplo
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ taplo.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ bad.toml
│  │     │  │     ├─ basic.toml
│  │     │  │     ├─ empty.toml
│  │     │  │     ├─ taplo_v0.8.0_CUSTOM.check.shot
│  │     │  │     └─ taplo_v0.8.0_test_data.basic.toml.check.shot
│  │     │  ├─ terraform
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ terraform.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ terraform_v1.1.0_variables.check.shot
│  │     │  │     ├─ terraform_v1.1.0_variables.fmt.shot
│  │     │  │     └─ variables.in.tf
│  │     │  ├─ terragrunt
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ terragrunt.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ terragrunt_v0.45.8_unformatted.fmt.shot
│  │     │  │     └─ unformatted.in.hcl
│  │     │  ├─ terrascan
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ sarif_to_sarif.py
│  │     │  │  ├─ terrascan.test.ts
│  │     │  │  └─ test_data
│  │     │  │     ├─ aws_db_instance_violation.in.tf
│  │     │  │     ├─ basic.in.dockerfile
│  │     │  │     ├─ terrascan_v1.18.1_aws_db_instance_violation.check.shot
│  │     │  │     └─ terrascan_v1.18.1_basic.check.shot
│  │     │  ├─ tflint
│  │     │  │  ├─ README.md
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ aws.tf
│  │     │  │  │  ├─ bad.tflint.hcl
│  │     │  │  │  ├─ tflint_v0.47.0_CUSTOM.check.shot
│  │     │  │  │  └─ tflint_v0.47.0_bad_config.check.shot
│  │     │  │  └─ tflint.test.ts
│  │     │  ├─ tfsec
│  │     │  │  ├─ parse.py
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ aws.in.tf
│  │     │  │  │  ├─ parse_error.in.tf
│  │     │  │  │  └─ tfsec_v1.28.1_basic.check.shot
│  │     │  │  └─ tfsec.test.ts
│  │     │  ├─ tofu
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ tofu_v1.6.2_variables.check.shot
│  │     │  │  │  ├─ tofu_v1.6.2_variables.fmt.shot
│  │     │  │  │  └─ variables.in.tf
│  │     │  │  └─ tofu.test.ts
│  │     │  ├─ trivy
│  │     │  │  ├─ README.md
│  │     │  │  ├─ config_expected_issues.json
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ Gemfile.lock
│  │     │  │  │  ├─ aws.tf
│  │     │  │  │  ├─ basic.Dockerfile
│  │     │  │  │  ├─ basic.yaml
│  │     │  │  │  ├─ go.mod
│  │     │  │  │  ├─ main.tf
│  │     │  │  │  ├─ nested
│  │     │  │  │  │  └─ requirements.txt
│  │     │  │  │  ├─ no_errors
│  │     │  │  │  │  └─ requirements.txt
│  │     │  │  │  ├─ requirements.txt
│  │     │  │  │  ├─ secrets.py
│  │     │  │  │  ├─ trivy_v0.44.1_config.check.shot
│  │     │  │  │  ├─ trivy_v0.44.1_fs-secret.check.shot
│  │     │  │  │  └─ trivy_v0.44.1_fs-vuln.check.shot
│  │     │  │  ├─ trivy.test.ts
│  │     │  │  ├─ trivy_config_to_sarif.py
│  │     │  │  ├─ trivy_fs_secret_to_sarif.py
│  │     │  │  ├─ trivy_fs_vuln_to_sarif.py
│  │     │  │  └─ vuln_expected_issues.json
│  │     │  ├─ trufflehog
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ buff_size.in.cc
│  │     │  │  │  ├─ secrets.in.py
│  │     │  │  │  ├─ trufflehog_git_v3.59.0_CUSTOM.check.shot
│  │     │  │  │  ├─ trufflehog_git_v3.68.0_CUSTOM.check.shot
│  │     │  │  │  ├─ trufflehog_git_v3.69.0_CUSTOM.check.shot
│  │     │  │  │  ├─ trufflehog_v3.59.0_buff_size.check.shot
│  │     │  │  │  ├─ trufflehog_v3.59.0_secrets.check.shot
│  │     │  │  │  ├─ trufflehog_v3.59.0_wrong_line_number.check.shot
│  │     │  │  │  ├─ trufflehog_v3.68.0_buff_size.check.shot
│  │     │  │  │  ├─ trufflehog_v3.68.0_secrets.check.shot
│  │     │  │  │  ├─ trufflehog_v3.68.0_wrong_line_number.check.shot
│  │     │  │  │  ├─ trufflehog_v3.69.0_buff_size.check.shot
│  │     │  │  │  ├─ trufflehog_v3.69.0_secrets.check.shot
│  │     │  │  │  ├─ trufflehog_v3.69.0_wrong_line_number.check.shot
│  │     │  │  │  └─ wrong_line_number.in.ts
│  │     │  │  ├─ trufflehog.test.ts
│  │     │  │  └─ trufflehog_to_sarif.py
│  │     │  ├─ trunk-toolbox
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ do_not_land.in.txt
│  │     │  │  │  └─ trunk_toolbox_v0.2.0_do_not_land.check.shot
│  │     │  │  └─ trunk_toolbox.test.ts
│  │     │  ├─ txtpbfmt
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ test0.in.textproto
│  │     │  │  │  ├─ test1.in.textpb
│  │     │  │  │  ├─ txtpbfmt_v0.0.0-20230412060525-fa9f017c0ded_test0.fmt.shot
│  │     │  │  │  └─ txtpbfmt_v0.0.0-20230412060525-fa9f017c0ded_test1.fmt.shot
│  │     │  │  └─ txtpbfmt.test.ts
│  │     │  ├─ vale
│  │     │  │  ├─ .vale.ini
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ basic.in.md
│  │     │  │  │  └─ vale_v3.4.1_basic.check.shot
│  │     │  │  └─ vale.test.ts
│  │     │  ├─ yamllint
│  │     │  │  ├─ .yamllint.yaml
│  │     │  │  ├─ plugin.yaml
│  │     │  │  ├─ test_data
│  │     │  │  │  ├─ basic.in.yaml
│  │     │  │  │  └─ yamllint_v1.26.3_basic.check.shot
│  │     │  │  └─ yamllint.test.ts
│  │     │  └─ yapf
│  │     │     ├─ plugin.yaml
│  │     │     ├─ test_data
│  │     │     │  ├─ basic.in.py
│  │     │     │  └─ yapf_v0.32.0_basic.fmt.shot
│  │     │     └─ yapf.test.ts
│  │     ├─ package-lock.json
│  │     ├─ package.json
│  │     ├─ plugin.yaml
│  │     ├─ repo-tools
│  │     │  ├─ definition-checker
│  │     │  │  └─ check.ts
│  │     │  ├─ linter-test-helper
│  │     │  │  ├─ generate
│  │     │  │  ├─ linter_sample.test.ts
│  │     │  │  ├─ linter_sample_plugin.yaml
│  │     │  │  └─ requirements.txt
│  │     │  └─ tool-test-helper
│  │     │     ├─ generate
│  │     │     ├─ requirements.txt
│  │     │     ├─ tool_sample.test.ts
│  │     │     └─ tool_sample_plugin.yaml
│  │     ├─ runtimes
│  │     │  ├─ README.md
│  │     │  ├─ go
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ java
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ node
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ php
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ python
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ ruby
│  │     │  │  └─ plugin.yaml
│  │     │  └─ rust
│  │     │     └─ plugin.yaml
│  │     ├─ security.md
│  │     ├─ tests
│  │     │  ├─ README.md
│  │     │  ├─ driver
│  │     │  │  ├─ action_driver.ts
│  │     │  │  ├─ driver.ts
│  │     │  │  ├─ index.ts
│  │     │  │  ├─ lint_driver.ts
│  │     │  │  └─ tool_driver.ts
│  │     │  ├─ index.ts
│  │     │  ├─ jest_setup.ts
│  │     │  ├─ parse
│  │     │  │  └─ index.ts
│  │     │  ├─ repo_tests
│  │     │  │  ├─ config_check.test.ts
│  │     │  │  ├─ readme_inclusion.test.ts
│  │     │  │  └─ valid_package_download.test.ts
│  │     │  ├─ reporter
│  │     │  │  ├─ index.js
│  │     │  │  └─ reporter.ts
│  │     │  ├─ types
│  │     │  │  └─ index.ts
│  │     │  └─ utils
│  │     │     ├─ index.ts
│  │     │     ├─ landing_state.ts
│  │     │     └─ trunk_config.ts
│  │     ├─ tools
│  │     │  ├─ 1password-cli
│  │     │  │  ├─ 1password_cli.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ act
│  │     │  │  ├─ act.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ action-validator
│  │     │  │  ├─ action_validator.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ adr
│  │     │  │  ├─ adr.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ age
│  │     │  │  ├─ age.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ agebox
│  │     │  │  ├─ agebox.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ air
│  │     │  │  ├─ air.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ alp
│  │     │  │  ├─ alp.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ amazon-ecr-credential-helper
│  │     │  │  ├─ amazon_ecr_credential_helper.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ asciinema
│  │     │  │  ├─ asciinema.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ assh
│  │     │  │  ├─ assh.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ aws-amplify
│  │     │  │  ├─ aws_amplify.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ awscli
│  │     │  │  ├─ awscli.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ bazel
│  │     │  │  ├─ bazel.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ bazel-differ
│  │     │  │  ├─ bazel.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ circleci
│  │     │  │  ├─ circleci.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ clangd
│  │     │  │  ├─ clangd.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ clangd-indexing-tools
│  │     │  │  ├─ clangd_indexing_tools.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ deno
│  │     │  │  ├─ deno.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ diff-so-fancy
│  │     │  │  ├─ diff_so_fancy.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ difft
│  │     │  │  ├─ difft.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ direnv
│  │     │  │  ├─ direnv.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ docker-credential-ecr-login
│  │     │  │  ├─ docker-credential-ecr-login.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ dotnet
│  │     │  │  ├─ dotnet.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ eksctl
│  │     │  │  ├─ eksctl.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ gh
│  │     │  │  ├─ gh.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ gk
│  │     │  │  ├─ gk.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ goreleaser
│  │     │  │  ├─ goreleaser.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ gt
│  │     │  │  ├─ gt.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ gulp
│  │     │  │  ├─ gulp.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ helm
│  │     │  │  ├─ helm.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ ibazel
│  │     │  │  ├─ ibazel.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ istioctl
│  │     │  │  ├─ istioctl.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ jq
│  │     │  │  ├─ jq.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ kubectl
│  │     │  │  ├─ kubectl.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ minikube
│  │     │  │  ├─ minikube.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ paratest
│  │     │  │  ├─ paratest.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ phpunit
│  │     │  │  ├─ phpunit.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ platformio
│  │     │  │  ├─ platformio.test.ts
│  │     │  │  └─ plugin.yaml
│  │     │  ├─ pnpm
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ pnpm.test.ts
│  │     │  ├─ prisma
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ prisma.test.ts
│  │     │  ├─ pwsh
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ pwsh.test.ts
│  │     │  ├─ renovate
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ renovate.test.ts
│  │     │  ├─ ripgrep
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ ripgrep.test.ts
│  │     │  ├─ sentry-cli
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ sentry_cli.test.ts
│  │     │  ├─ sfdx
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ sfdx.test.ts
│  │     │  ├─ sourcery
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ sourcery.test.ts
│  │     │  ├─ tailwindcss
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ tailwindcss.test.ts
│  │     │  ├─ target-determinator
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ target_determinator.test.ts
│  │     │  ├─ terraform
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ terraform.test.ts
│  │     │  ├─ terraform-docs
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ terraform_docs.test.ts
│  │     │  ├─ terraform-switcher
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ terraform_switcher.test.ts
│  │     │  ├─ terraformer
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ terraformer.test.ts
│  │     │  ├─ terramate
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ terramate.test.ts
│  │     │  ├─ tfmigrate
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ tfmigrate.test.ts
│  │     │  ├─ tfnotify
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ tfnotify.test.ts
│  │     │  ├─ tfupdate
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ tfupdate.test.ts
│  │     │  ├─ tofu
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ tofu.test.ts
│  │     │  ├─ tree-sitter
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ tree_sitter.test.ts
│  │     │  ├─ ts-node
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ ts_node.test.ts
│  │     │  ├─ tsc
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ tsc.test.ts
│  │     │  ├─ webpack
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ webpack.test.ts
│  │     │  ├─ yarn
│  │     │  │  ├─ plugin.yaml
│  │     │  │  └─ yarn.test.ts
│  │     │  └─ yq
│  │     │     ├─ plugin.yaml
│  │     │     └─ yq.test.ts
│  │     ├─ trunk.ps1
│  │     └─ tsconfig.json
│  ├─ tools
│  │  ├─ tflint
│  │  ├─ trufflehog
│  │  └─ trunk
│  └─ trunk.yaml
├─ 1st-project-rds-elasticache
│  ├─ .terraform
│  │  └─ providers
│  │     └─ registry.terraform.io
│  │        └─ hashicorp
│  │           ├─ aws
│  │           │  └─ 5.63.0
│  │           │     └─ linux_amd64
│  │           │        ├─ LICENSE.txt
│  │           │        └─ terraform-provider-aws_v5.63.0_x5
│  │           ├─ awscc
│  │           │  └─ 1.10.0
│  │           │     └─ linux_amd64
│  │           │        ├─ LICENSE.txt
│  │           │        └─ terraform-provider-awscc_v1.10.0_x5
│  │           ├─ null
│  │           │  └─ 3.2.2
│  │           │     └─ linux_amd64
│  │           │        └─ terraform-provider-null_v3.2.2_x5
│  │           └─ time
│  │              └─ 0.12.0
│  │                 └─ linux_amd64
│  │                    ├─ LICENSE.txt
│  │                    └─ terraform-provider-time_v0.12.0_x5
│  ├─ .terraform.lock.hcl
│  ├─ ami
│  │  ├─ ami-creation
│  │  │  ├─ .terraform
│  │  │  │  └─ providers
│  │  │  │     └─ registry.terraform.io
│  │  │  │        └─ hashicorp
│  │  │  │           └─ aws
│  │  │  │              └─ 5.63.0
│  │  │  │                 └─ linux_amd64
│  │  │  │                    ├─ LICENSE.txt
│  │  │  │                    └─ terraform-provider-aws_v5.63.0_x5
│  │  │  ├─ .terraform.lock.hcl
│  │  │  ├─ ami.tf
│  │  │  ├─ config.tf
│  │  │  └─ variables.tf
│  │  └─ ami-machine
│  │     ├─ .terraform
│  │     │  └─ providers
│  │     │     └─ registry.terraform.io
│  │     │        └─ hashicorp
│  │     │           ├─ aws
│  │     │           │  └─ 5.63.0
│  │     │           │     └─ linux_amd64
│  │     │           │        ├─ LICENSE.txt
│  │     │           │        └─ terraform-provider-aws_v5.63.0_x5
│  │     │           └─ time
│  │     │              └─ 0.12.0
│  │     │                 └─ linux_amd64
│  │     │                    ├─ LICENSE.txt
│  │     │                    └─ terraform-provider-time_v0.12.0_x5
│  │     ├─ .terraform.lock.hcl
│  │     ├─ backend.tf
│  │     ├─ config.tf
│  │     └─ variables.tf
│  ├─ build-ami.sh
│  ├─ config.tf
│  ├─ ec2.tf
│  ├─ elasticache.tf
│  ├─ keypair
│  │  ├─ 1stproject-bastion-key.pem
│  │  └─ 1stproject-webserver-key.pem
│  ├─ main.tf
│  ├─ output.tf
│  ├─ rds.tf
│  ├─ security-group.tf
│  ├─ variables.tf
│  └─ vpc.tf
└─ README.md

```