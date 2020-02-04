require "actions_formatter/version"

module XCPretty
  class ActionsFormatter < Simple
    def format_compile_error(file_name, file_path, reason, line, cursor);
      file = file_path.match /^(.+):(\d+):(\d+)$/

      if file.nil?
        STDOUT.puts "::error file=#{file_path}::#{reason}"
      else
        STDOUT.puts "::error file=#{file[1]},line=#{file[2]},col=#{file[3]}::#{reason}"
      end

      super
    end

    def format_compile_warning(file_name, file_path, reason, line, cursor);
      file = file_path.match /^(.+):(\d+):(\d+)$/

      if file.nil?
        STDOUT.puts "::warning file=#{file_path}::#{reason}"
      else
        STDOUT.puts "::warning file=#{file[1]},line=#{file[2]},col=#{file[3]}::#{reason}"
      end
      
      super
    end
  end 
end

XCPretty::ActionsFormatter
