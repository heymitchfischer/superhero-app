class Superhero
  attr_reader :name, :hitpoints, :attack, :alive, :has_special_tool
  attr_writer :hitpoints, :alive, :has_special_tool

  def initialize(hash)
    @name = hash[:name]
    @hitpoints = hash[:hitpoints]
    @attack = hash[:attack]
    @alive = true
    @has_special_tool = false
  end

  def hit(superhero)
    if self.has_special_tool == true
      superhero.hitpoints -= self.attack * 3
    else
      superhero.hitpoints -= self.attack
    end
    if superhero.hitpoints <= 0
      superhero.alive = false
    end
  end

  def grab_tool
    self.has_special_tool = true
  end
end