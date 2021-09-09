require './lib/logline_parser/log_line_parser.rb'

describe LogLineParser do
    describe "#message" do
        it "returns the ERROR message" do
            log_line = LogLineParser.new('[ERROR]: Stack overflow')
            expect(log_line.message).to eql('Stack overflow')
        end

        it "returns the WARNING message" do
            log_line = LogLineParser.new('[WARNING]: Disk almost full')
            expect(log_line.message).to eql('Disk almost full')
        end

        it "returns the INFO message" do
            log_line = LogLineParser.new('[INFO]: File moved')
            expect(log_line.message).to eql('File moved')
        end

        it "returns the message without leading and trailing space" do
            log_line = LogLineParser.new("[WARNING]:   \tTimezone not set  \r\n")
            expect(log_line.message).to eql('Timezone not set')
        end
    end

    describe "log_level" do
        it "returns error log level in downcase" do
            log_line = LogLineParser.new('[ERROR]: Disk full')
            expect(log_line.log_level).to eql('error')
        end

        it "returns warning log level in downcase" do
            log_line = LogLineParser.new('[WARNING]: Disk almost full')
            expect(log_line.log_level).to eql('warning')
        end

        it "returns info log level in downcase" do
            log_line = LogLineParser.new('[INFO]: File moved')
            expect(log_line.log_level).to eql('info')
        end
    end

    describe "#reformat" do
        it "returns error reformat" do
            log_line = LogLineParser.new('[ERROR]: Segmentation fault')
            expect(log_line.reformat).to eql('Segmentation fault (error)')
        end

        it "returns warning reformat" do
            log_line = LogLineParser.new('[WARNING]: Decreased performance')
            expect(log_line.reformat).to eql('Decreased performance (warning)')
        end

        it "returns info reformat" do
            log_line = LogLineParser.new('[INFO]: Disk defragmented')
            expect(log_line.reformat).to eql('Disk defragmented (info)')
        end

        it "returns reformat without leading and trailing space" do
            log_line = LogLineParser.new("[ERROR]: \t Corrupt disk\t \t \r\n")
            expect(log_line.reformat).to eql('Corrupt disk (error)')
        end
    end
end
