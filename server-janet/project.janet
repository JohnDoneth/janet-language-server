
(declare-project
  :name "janet-ls"
  :description ``` ```
  :version "0.0.0"
  :dependencies [
    "https://github.com/janet-lang/spork.git"
  ])

(declare-source
  :prefix "."
  :source [
    "src/main.janet"
    "src/rpc.janet"
    "src/eval.janet"
  ])

(declare-executable
  :name "janet-ls"
  :entry "src/main.janet")