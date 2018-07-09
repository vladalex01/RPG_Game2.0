require_relative 'character'
require_relative 'stats'
require_relative 'Consumable'
require_relative 'hero'
require_relative 'Weapon'

require 'test/unit'


class TestHero < Test::Unit::TestCase
  def test_use_consumable
    h = Hero.new
    cons = Consumable.new
    cons.stats.hp = 10
    h.use_consumable(cons)
    assert_equal(h.stats.hp, 10)
  end

  def test_change_wearable_head
    h = Hero.new
    w = Wearable.new
    w.type = 'head'
    w.stats.attack = 1
    h.change_wearable(w)
    assert_equal(h.equipment.head.stats.attack, 1)
  end

  def test_change_wearable_chest
    h = Hero.new
    w = Wearable.new
    w.type = 'chest'
    w.stats.attack = 2
    h.change_wearable(w)
    assert_equal(h.equipment.chest.stats.attack, 2)
  end

  def test_change_wearable_boots
    h = Hero.new
    w = Wearable.new
    w.type = 'boots'
    w.stats.attack = 3
    h.change_wearable(w)
    assert_equal(h.equipment.boots.stats.attack, 3)
  end

  def test_change_weapon
    h = Hero.new
    w = Weapon.new
    w.stats.attack = 7
    h.change_weapon(w)
    assert_equal(h.equipment.weapon.stats.attack, 7)
  end
end
