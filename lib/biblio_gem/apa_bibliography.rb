module BiblioGem
	class APABibliography < Bibliography
		attr_accessor :autor, :titulo, :fecha
		
		def initialize(autor, titulo, fecha)
	        super(autor, titulo, fecha)
	        end
		
		def to_s
			if @autor.is_a? Array
				str = "Autores:\n"
				@autor.each do |w|
					w.scan(/(.).*?\s+(\w+)/){ |x,y| str << y << ", " << x << ".\n"}
				end
				str
			else
				str = "Autor:\n"
				autor.scan(/(.).*?\s+(\w+)/){ |x,y| str << y << ", " << x << ".\n"}
				str
			end
		end
	end
end
