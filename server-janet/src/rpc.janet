(import spork/json :as json)

(defn read-from-file [file-path]
  (let [f (file/open file-path :r)
        content  (file/read f :all)]
    (file/close f)
    content))

(def example-file
  (read-from-file "C:/Users/John/projects/janet-lsp/sample-request.json"))

(defn success-response [id result]
	(json/encode {
		:jsonrpc "2.0"
		:id id
		:result result
	}))


