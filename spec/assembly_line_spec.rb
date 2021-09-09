require './lib/assembly_line/assembly_line.rb'

describe AssemblyLine do
    describe "#production_rate_per_hour" do
        it "returns production rate for speed 2" do
            assembly_line = AssemblyLine.new(2)
            expect(assembly_line.production_rate_per_hour).to eql(442.0)
        end

        it "returns production rate for speed 5" do
            assembly_line = AssemblyLine.new(5)
            expect(assembly_line.production_rate_per_hour).to eql(994.5)
        end

        it "returns production rate for speed 9" do
            assembly_line = AssemblyLine.new(9)
            expect(assembly_line.production_rate_per_hour).to eql(1591.2)
        end

        it "returns production rate for speed 10" do
            assembly_line = AssemblyLine.new(10)
            expect(assembly_line.production_rate_per_hour).to eql(1701.7)
        end
    end

    describe "#working_items_per_minute" do
        it "returns working items per min for speed 1" do
            assembly_line = AssemblyLine.new(1)
            expect(assembly_line.working_items_per_minute).to eql(3)
        end

        it "returns working items per min for speed 5" do
            assembly_line = AssemblyLine.new(5)
            expect(assembly_line.working_items_per_minute).to eql(16)
        end

        it "returns working items per min for speed 8" do
            assembly_line = AssemblyLine.new(8)
            expect(assembly_line.working_items_per_minute).to eql(26)
        end

        it "returns working items per min for speed 9" do
            assembly_line = AssemblyLine.new(9)
            expect(assembly_line.working_items_per_minute).to eql(26)
        end

        it "returns working items per min for speed 10" do
            assembly_line = AssemblyLine.new(10)
            expect(assembly_line.working_items_per_minute).to eql(28)
        end
    end
end