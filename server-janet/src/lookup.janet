
(defn lookup [{:line line :character character} source]
	(string/from-bytes (((string/split "\n" source) line) character)))


(defn word-at [location source]
	(def {:character character-pos :line line-pos} location)
	
	(pp character-pos)
	(pp line-pos)
	
	(var line ((string/split "\n" source) line-pos))

	(var backward @[])
	(var forward @[])
	
	(var done false)
	(for i character-pos (length line)

		# (pp (string/from-bytes (line i)))

		(var char (string/from-bytes (line i)))

		(if (and (not done) (not= char " ") (not= char "(") (not= char ")"))
			(array/push forward char)
			(set done true)
		)
	)

	(var done false)
	(for i (+ (- character-pos) 1) 1
		(var char (string/from-bytes (line (- i))))

		(if (and (not done) (not= char " ") (not= char "(") (not= char ")"))
			(array/insert backward 0 char)
			(set done true)
		)
	)

	(string/join (array/concat backward forward))
)


# (pp (lookup {:line 0 :character 0} "1\n23\n45"))


# (pp (word-at {:line 0 :character 12} "word not a word\n23\n45"))

# (pp (word-at {:line 1 :character 6} "\nword not a word\n23\n45"))

# (pp (word-at {:line 0 :character 0} "  "))