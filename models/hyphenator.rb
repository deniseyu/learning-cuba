class String
  def contains_ass?
    detect != nil ? true : false
  end

  def move_hyphen
    self.gsub("-ass ", " ass-")
  end

  private

  def detect
    self =~ /-ass/
  end
end