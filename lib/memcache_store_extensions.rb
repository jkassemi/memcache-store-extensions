require 'active_support/cache/mem_cache_store'
require 'active_support/core_ext/module/aliasing'

class ActiveSupport::Cache::MemCacheStore
  def write_entry_with_match_support(key, entry, options)
    (@keys ||= Set.new).add(key)
    write_entry_without_match_support(key, entry, options)
  end
  alias_method_chain :write_entry, :match_support

  def clear_with_match_support(options=nil)
    @keys = Set.new
    clear_without_match_support(options)
  end
  alias_method_chain :clear, :match_support

  def delete_entry_with_match_support(key, options)
    (@keys ||= Set.new).delete key
    delete_entry_without_match_support(key, options)
  end
  alias_method_chain :delete_entry, :match_support

  def delete_matched(matcher, options=nil)
    @keys.each do |key|
      delete_entry(key, options) if key =~ matcher
    end 
  end
end
