module Thermostat
  module Logger

    @@log_file = File.new "thermostat.log", "a"

    def self.log message
      $stderr.puts message
      @@log_file.puts "[#{Time.now}] #{message}"
      @@log_file.flush
    end

    def self.error_log message
      self.log "ERROR: #{message}"
    end

    def self.log_exception e
      self.log "#{e.to_s}\n\t#{e.backtrace.join("\n\t")}"
    end
    
  end
  
end
