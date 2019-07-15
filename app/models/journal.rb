class Journal < ApplicationRecord
  belongs_to :user
  has_many :entries, dependent: :destroy

  def last_three_entries
    entries.order("DATE_TRUNC('second', updated_at) desc, id asc").limit(3)
  end

  def journal_minutes
    total = 0
    entries.each do |e|
      total += e.entry_minutes
    end
    total
  end

  # def time
  #   minutes = self.journal_minutes
  #   if minutes >= 60
  #     hours = minutes / 60
  #     minutes = minutes % 60

  #     "#{hours} hour(s) #{minutes} min(s)"
  #   else
  #     "#{minutes} min(s)"
  #   end
  # end

  def time
    seconds = self.journal_minutes
    if seconds >= 60 * 60
      minutes = seconds / 60
      hours = minutes / 60
      minutes = minutes % 60
      seconds = seconds % 60

      "#{hours} hour(s) #{minutes} min #{seconds} sec"
    elsif seconds >= 60
      minutes = seconds / 60
      seconds = seconds % 60
      "#{minutes} min #{seconds} sec"
    else
      "#{seconds} sec"
    end
  end
end
