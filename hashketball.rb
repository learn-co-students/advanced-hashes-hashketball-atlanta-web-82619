def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [

          {:player_name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1},

          {:player_name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7},

          {:player_name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15},

          {:player_name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5},

          {:player_name => "Jason Terry",
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1}
          ]
    },

      :away => {
       :team_name => "Charlotte Hornets",
       :colors => ["Turquoise", "Purple"],
       :players => [

          {:player_name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2},

          {:player_name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10},

          {:player_name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5},

          {:player_name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0},

          {:player_name => "Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12}
          ]
      }
  }
end
 
def num_points_scored(name)
  game_hash.each do |home_away, team_info|
    team_info.each do |info, data|
      if info == :players
        data.each do |player|
          if player[:player_name] == name
            return player[:points]
          end
        end
      end
    end
  end
end
 
def shoe_size(name)
  game_hash.each do |home_away, team_info|
    team_info.each do |info, data|
      if info == :players
        data.each do |player|
          if player[:player_name] == name
            return player[:shoe]
          end
        end
      end
    end
  end
end
   
def team_colors(name)
  game_hash.each do |home_away, team_info|
    if team_info[:team_name] == name
      return game_hash[home_away][:colors]
    end
  end
 end
 
  def team_names()
  game_hash.map do |home_away, team_info|
    team_info[:team_name]
  end
end
 
def player_numbers(name)
  jersey_numbers = []
   
  game_hash.each do |home_away, team_info|
    if team_info[:team_name] == name 
      team_info.each do |info, data|
        if info == :players
          data.each do |player|
           jersey_numbers << player[:number]
         end
        end
      end
    end
  end
  return jersey_numbers
end
 
def player_stats(name)
  game_hash.each do |home_away, team_info|
    team_info.each do |info, data|
      if info == :players
        data.each do |player|
          if player[:player_name] == name
            stats = player.delete_if do |key, value|
              key == :player_name
            end
            return stats
          end
        end
      end
    end
  end
end
 
def big_shoe_rebounds
  shoes = 0
  rebounds = 0
  
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:shoe] > shoes
        shoes = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  return rebounds
end

def most_points_scored
  points = 0
  best_player = ""
  
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:points] > points
        points = player[:points]
        best_player = player[:player_name]
      end
    end
  end
  return best_player
end

def winning_team
  team1 = 0
  team2 = 0
  
  game_hash.each do |home_away, team_info|
    if team_info[:team_name] == "Brooklyn Nets"
      team_info[:players].each do |player|
        team1 = team1 + player[:points]
      end
    else
      team_info[:players].each do |player|
        team2 = team2 + player[:points]
      end
    end
  end
  if team1 > team2
    return "Brooklyn Nets"
  else
    return "Charlotte Hornets"
  end
end

def player_with_longest_name
  longest_name = 0
  that_name = ""
  
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:player_name].to_s.length > longest_name
        longest_name = player[:player_name].to_s.length
        that_name = player[:player_name]
      end
    end
  end
  return that_name
end

def long_name_steals_a_ton?
  longest_name = 0
  that_name = ""
  most_steals = 0
  steals_name = ""
  
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:player_name].to_s.length > longest_name
        longest_name = player[:player_name].to_s.length
        that_name = player[:player_name]
      end
    end
  end
  
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:steals] > most_steals
        most_steals = player[:steals]
        steals_name = player[:player_name]
      end
    end
  end  
  
  if that_name == steals_name
    return true
  end
end
 
 