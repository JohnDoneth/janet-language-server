
(declare-project
  :name "janet-ls"
  :description ``` ```
  :version "0.0.0")

(declare-source
  :prefix "."
  :source [
    "src/main.janet"
    "src/rpc.janet"
  ])

(declare-executable
  :name "janet-ls"
  :entry "src/main.janet")