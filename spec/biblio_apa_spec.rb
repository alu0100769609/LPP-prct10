#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::APABibliography do
    describe "Almacenar 1 autor:" do
        before :each do
            @bib1 = BiblioGem::APABibliography.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby) Pragmatic Bookshelf", "7/7/2013.")
            @bib2 = BiblioGem::APABibliography.new("Andy Hunt", "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby) Pragmatic Bookshelf", "5/7/2013")
        end
        it "La referencia contiene los nombres de los autores" do
            expect(@bib1.autor).to eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])
            expect(@bib2.autor).to eq("Andy Hunt")
        end
        
        it "Apellidos e iniciales del nombre de los libros" do
            expect(@bib1.to_s).to eq("Autores:\nThomas, D.\nHunt, A.\nFowler, C.\n")
            expect(@bib2.to_s).to eq("Hunt, A.")
        end
    end
end