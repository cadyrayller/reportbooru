class Tag < DanbooruModel
  attr_readonly *column_names

  def self.post_count(name)
    where(name: name).pluck(:post_count).first
  end
end
