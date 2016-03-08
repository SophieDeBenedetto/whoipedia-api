class Season < ActiveRecord::Base
  has_many :episodes
  has_many :writers, through: :episodes

  validates_uniqueness_of :number

  ALIENS = {"dalek" => 0, "cybermen" => 0 , "ood" => 0, "slitheen" => 0, "master" => 0, "missy" => 0, "krillitanes" => 0, "sycorax"  => 0, "isolus"  => 0,
    "abzorbaloff" => 0, "carrionites" => 0, "angel" => 0, "sontaran" => 0, "hath" => 0, "silence" => 0, "davros" => 0, 
    "silurian" => 0, "auton" => 0, "kovarian" => 0, "zygon" => 0}

  def self.alien_metadata
    reset_alien_count
    count_aliens
    create_metadata
  end

  def self.count_aliens
    Episode.all.each do |episode|
      episode.description.split(" ").each do |word|
        if ALIENS.keys.include?(word.downcase)
          ALIENS["#{word.downcase}"] += 1
        end
      end
    end
  end

  def self.create_metadata
    ALIENS.map do |alien, amount_of_aliens|
      {label: alien, value: amount_of_aliens * 500}
    end
  end

  def self.reset_alien_count
    ALIENS.each {|alien, count| ALIENS[alien] = 0}
  end
end