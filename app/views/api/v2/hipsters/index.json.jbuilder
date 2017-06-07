json.array! @hipsters.each do |hipster|
	json.word hipster.word
	json.sentence hipster.sentence
	json.paragraph hipster.paragraph
end