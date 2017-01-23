class EntryRepository
  include Enumerable

  def initialize
    @entries = []
  end

  def save(entry)
    @entries.push(entry)
    return @entries.length - 1
  end

  def fetch(id)
    @entries[id]
  end

  def each(&block)
    @entries.each(&block)
  end
end
