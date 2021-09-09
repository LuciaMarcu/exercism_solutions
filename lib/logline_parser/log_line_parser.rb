class LogLineParser

    def initialize(line)
        @line = line
    end

    def message
        if @line.start_with?("[ERROR]") 
        str = @line.delete_prefix("[ERROR]: ").strip      
        elsif @line.start_with?("[WARNING]") 
        str = @line.delete_prefix("[WARNING]: ").strip      
        else @line.start_with?("[INFO]") 
        str = @line.delete_prefix("[INFO]: ").strip      
        end
    end

    def log_level
        level = @line[/\[(.*?)\]/, 1].downcase    
    end

    def reformat
        mess = message
        level = log_level
        reform = "#{mess} (#{level})"    
    end

end