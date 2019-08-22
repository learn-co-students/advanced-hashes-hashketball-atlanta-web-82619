def game_hash => {
  :home => { 
    :team_name => {"Brooklyn Nets"},
    :colors => {"Black", "White"},
    :players => [
      "Alan Anderson" = {number: "0", shoe: "16", points: "22", rebounds: "12",  assists: "12", steals: "3", blocks: "1", slam_dunks: "1"},
      "Reggie Evans" = {number: "30", shoe: "14", points: "12", rebounds: "12", assists: "12", steals: "12", blocks: "12", slam_dunks:"7"}
      "Brook Lopez" = {number: "11", shoe: "17", points: "17", rebounds: "19", assists:  "10", steals:"3", blocks: "8", slam_dunks: "5"}
      "Mason Pumlee" = {number: "1", shoe: "19", points: "26", rebounds: "11", assists: "6", steals: "3", blocks: "8", slam_dunks: "5"}
      "Jason Terry" = {number: "31", shoe: "15", points: "19", rebounds:"2", assists: "2"  steals: "4", blocks: "11", slam_dunks: "1"}
    ]
  },
  :away => {
    :team_name => "Charlotte Hornets"},
    :colors => "Turquoise", "Purple"},
    :players => [
      "Jeff Adrien" = {number: "4", shoe: "18", points: "10", rebounds: "1", assists: "1", steals: "2", blocks: "block", slam_dunks: "2"}
      "Bismack Biyombo" = {number: "0", shoe: "16", points:"12", rebounds:"4", assists: "7", steals: "22", blocks:"15", slam_dunks: "10"}
      "DeSaga Diop" = {number: "2", shoe:"14", points:"24" rebounds:"12", assists: "12", steals: "4", blocks: "5", slam_dunks: "5"}
      "Ben Gordon" = {number: "8", shoe: "15", points: "33", rebounds: "3", assists: "2",  steals: "1", blocks: "1", slam_dunks: "0"}
      "Kemba Walker" = {number:"33", shoe: "15", points: "6", rebounds: "12", assists: "12",  steals: "7", blocks: "5", slam_dunks: "12"}
    ]
  }
}
end

def good_practices
  game_hash.each do |location, team_data|
    binding.pry
  
      team_data.each do |attribute, data|
        binding.pry
      
        data.each do |data_item|
           binding.pry
      end
    end
  end
end
 


def num_points_scored
  game_hash.each[:players][:points]
end 

def shoe_size
  game_hash.map[:players][:shoe]
end

def team_colors
  game_hash[:colors]
end

def team_names
  game_hash[:team_name]
end

def player_numbers
  game_hash.each[:players][:numbers]
end

def player_stats
  game_hash.each.map[:players]
end

def big_shoe_rebounds 
  game_hash.each[:player][:shoe.largest]
  binding.pry 
  largest[rebounds]
end 









