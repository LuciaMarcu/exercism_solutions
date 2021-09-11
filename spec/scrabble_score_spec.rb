require './lib/scrabble_score/scrabble_score.rb'

describe Scrabble do
    describe "#score" do
        it "returns zero for empty string" do
            expect(Scrabble.new('').score).to eql(0)
        end

        it "returns zero for whitespace" do
            expect(Scrabble.new(" \t\n").score).to eql(0)
        end

        it "returns zero for nil" do
            expect(Scrabble.new(nil).score).to eql(0)
        end

        it "returns the score for very short word" do
            expect(Scrabble.new('a').score).to eql(1)
        end

        it "returns the score for very short word" do
            expect(Scrabble.new('f').score).to eql(4)
        end

        it "returns the score for simple word" do
            expect(Scrabble.new('street').score).to eql(6)
        end

        it "returns the score for complicated word" do
            expect(Scrabble.new('quirky').score).to eql(22)
        end

        it "returns same score for words with capital letters " do
            expect(Scrabble.new('STREET').score).to eql(6)
        end

        it "returns the score for words in capital letter" do
            expect(Scrabble.new('OXYPHENBUTAZONE').score).to eql(41)
        end

        it "returns the score without an instance of Scrabble" do
            expect(Scrabble.score('alacrity')).to eql(13)
        end
    end
end

