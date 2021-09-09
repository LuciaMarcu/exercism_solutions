require './lib/lasagna/lasagna.rb'

describe Lasagna do
    describe "#remaining_minutes_in_oven" do
        it "returns remaining minutes in oven" do
            lasagna = Lasagna.new
            expect(lasagna.remaining_minutes_in_oven(25)).to eql(15)
        end
    end

    describe "#preparation_time_in_minutes(layers)" do
        it "returns how many minutes took the preparation " do
            lasagna = Lasagna.new
            expect(lasagna.preparation_time_in_minutes(1)).to eql(2)
        end

        it "returns how many minutes took the preparation " do
            lasagna = Lasagna.new
            expect(lasagna.preparation_time_in_minutes(4)).to eql(8)
        end
    end

    describe "#total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)" do
        it "returns total time in minutes" do
            lasagna = Lasagna.new
            expect(lasagna.total_time_in_minutes(number_of_layers: 1, actual_minutes_in_oven: 30)).to eql(32)
        end

        it "returns total time in minutes" do
            lasagna = Lasagna.new
            expect(lasagna.total_time_in_minutes(number_of_layers: 4, actual_minutes_in_oven: 8)).to eql(16)
        end
    end


end