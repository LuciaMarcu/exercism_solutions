require './lib/luhn/luhn.rb'

describe Luhn do
    describe "#valid?(string)" do        

        it "returns true for a reverted small string" do
            expect(Luhn.valid?("059")).to be_truthy
        end

        it "returns true for a valid string" do
            expect(Luhn.valid?("055 444 285")).to be_truthy
        end

        it "returns true for more than single zero" do
            expect(Luhn.valid?("0000 0")).to be_truthy
        end

        it "returns true for input digit 9 corectly converted output digit 9" do
            expect(Luhn.valid?("091")).to be_truthy
        end

        it "returns false for single digit strings" do
            expect(Luhn.valid?("1")).to be_falsy
        end

        it "returns false for a invalid string" do
            expect(Luhn.valid?("055 444 286")).to be_falsy
        end

        it "returns false for a invalid credit card number" do
            expect(Luhn.valid?("8273 1232 7352 0569")).to be_falsy
        end

        it "returns false for a valid string with a non-digit included" do
            expect(Luhn.valid?("055a 444 285")).to be_falsy
        end

        it "returns false for a valid string with punctuation included" do
            expect(Luhn.valid?("055-444-285")).to be_falsy
        end

        it "returns false for a valid string with symbols included" do
            expect(Luhn.valid?("055£ 444$ :285")).to be_falsy
        end

        it "returns false for a single zero with space" do
            expect(Luhn.valid?(" 0")).to be_falsy
        end
    end
end