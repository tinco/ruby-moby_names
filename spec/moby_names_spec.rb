# frozen_string_literal: true

RSpec.describe MobyNames do
  it "has a version number" do
    expect(MobyNames::VERSION).not_to be nil
  end

  describe ".random_name" do
    it "generates names with valid adjectives and nouns" do
      # Generate 5 random names
      5.times do
        random_name = MobyNames.random_name
        
        # Split the name on underscore
        parts = random_name.split("_")
        
        # Verify there are exactly two parts (adjective and noun)
        expect(parts.length).to eq(2)
        
        adjective = parts[0]
        noun = parts[1]
        
        # Verify the adjective is in the adjectives list
        expect(MobyNames::ADJECTIVES).to include(adjective)
        
        # Verify the noun is in the nouns list
        expect(MobyNames::NOUNS).to include(noun)
      end
    end
  end
end
