require 'json'

class Word
	
	def initialize(name, type)
		raise TypeError unless name.kind_of?(String)
		@name = name	
		@type = type
	end
	
	def to_json
		{name: @name, type: @type }.to_json
	end
	
end

module WordType
	NOUN = 'noun' 
	VERB = 'verb'
	ADV  = 'adverb'
	ADJ  = 'adjective'
end

honour = Word.new(name="honour", WordType::VERB)
puts honour.to_json
