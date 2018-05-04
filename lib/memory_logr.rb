require "memory_logr/version"

module MemoryLogr
  def log_memory(&block)
    begin
      log_start
      thread = create_memory_log_thread
      yield
    ensure
      Thread.kill(thread)
      log_finish
    end
  end

  private

  def start_time
    @start_time ||= Time.now
  end

  def log_start
    Rails.logger.info "[MemoryLogr] Start time: #{start_time}"
  end

  def create_memory_log_thread
    Thread.new do
      while true
        rss = `ps -eo pid,rss | grep #{$$} | awk '{print $2}'`.to_i
        Rails.logger.info "[MemoryLogr] Resident memory size: #{rss * 0.001}Mb"
        sleep 5
      end
    end
  end

  def log_finish
    Rails.logger.info "[MemoryLogr] Completed in: #{(Time.now - start_time) / 60} minutes"
  end
end
