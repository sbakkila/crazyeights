# -*- coding: utf-8 -*-

# Cards
# Has value string
# Has suit string
# Reader for suit and value
# Special accessor for eights
# Has equality operator Compares two cards to see if they’re equal in suit OR value
# Maybe a to_s?
# Special properties of eights


# Represents a playing card.

require 'byebug'

class Card
  SUIT_STRINGS = {
    :clubs    => "♣",
    :diamonds => "♦",
    :hearts   => "♥",
    :spades   => "♠"
  }

  VALUE_STRINGS = {
    :deuce => "2",
    :three => "3",
    :four  => "4",
    :five  => "5",
    :six   => "6",
    :seven => "7",
    :eight => "8",
    :nine  => "9",
    :ten   => "10",
    :jack  => "J",
    :queen => "Q",
    :king  => "K",
    :ace   => "A"
  }

  # Returns an array of all suits.
  def self.suits
    SUIT_STRINGS.keys
  end

  # Returns an array of all values.
  def self.values
    VALUE_STRINGS.keys
  end

  attr_reader :suit, :value

  def initialize(suit, value)
    unless Card.suits.include?(suit) and Card.values.include?(value)
      raise "illegal suit (#{suit}) or value (#{value})"
    end

    @suit, @value = suit, value
  end


  # Compares two cards to see if they're equal in suit || value.
  # not order agnostic, you can put an 8 down on any card
  # but you cannot put any card down on an 8
  def ==(other_card)
    return false if other_card.nil?
    # debugger

    return true if other_card.value == :eight
    self.suit == other_card.suit || self.value == other_card.value
  end

end
