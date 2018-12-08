class Python
  def self.run(file)
    `python app/scripts/#{file}`
  end
end
