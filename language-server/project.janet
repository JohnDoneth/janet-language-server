
(declare-project
  :name "janet-language-server"
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
  :name "janet-language-server"
  :entry "src/main.janet")