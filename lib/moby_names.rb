# frozen_string_literal: true

require_relative "moby_names/version"
require_relative "moby_names/adjectives"
require_relative "moby_names/nouns"

module MobyNames
  class Error < StandardError; end

  def self.random_adjective
    ADJECTIVES.sample
  end

  def self.random_noun
    NOUNS.sample
  end

  def self.random_name
    "#{random_adjective}_#{random_noun}"
  end
end
