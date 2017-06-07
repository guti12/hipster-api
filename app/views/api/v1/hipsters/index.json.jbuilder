json.array! @hipsters.each do |hipster|
	json.id hipster.id
	json.word hipster.word
	json.sentence hipster.sentence
	json.paragraph hipster.paragraph
end