# Week2 Day1 Exercise <Lexiconomitron>

class Lexiconomitron
	def eat_t(string)
		string.split('').select do |char|
			char.downcase != 't'
		end.join
	end

	def shazam(string)
		string.map!(&:reverse) # (&:reverse) => {|string| sting.reverse} works for all enumerators
		[string.first, string.last].map {|word| eat_t(word)}
	end

	def oompa_loompa(words)
		words.select {|word| word.size <= 3}
	end
end

lexi = Lexiconomitron.new
p lexi.eat_t("great scott!")
p lexi.shazam(%w(This is a boring test))
