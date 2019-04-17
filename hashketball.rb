require "pry"
def game_hash
  hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
    team_name: "Charlotte Hornets",
    colors: ["Turquoise", "Purple"],
    players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(name)
  game_hash.each_value do |team|
    team[:players].each_key do |player_name|
      return team[:players][player_name][:points] if player_name == name
    end
  end
end

def shoe_size(name)
  game_hash.each_value do |team|
    team[:players].each_key do |player_name|
      return team[:players][player_name][:shoe] if player_name == name
    end
  end
end

def team_colors(team_name)
  game_hash.each_key do |team|
    return game_hash[team][:colors] if game_hash[team][:team_name] == team_name
  end
end

def team_names
  arr = []
  
  game_hash.each_value {|team| arr << team[:team_name]}
  
  arr
end

def player_numbers(team_name)
  arr = []
  
  game_hash.each_value do |team|
    team[:players].each_value do |player|
      arr << player[:number] if team[:team_name] == team_name
    end
  end
  
  arr
end

def player_stats(player_name)
  game_hash.each_value do |team|
    team[:players].each do |name, player_stats|
      return player_stats if name == player_name
    end
  end
end

def big_shoe_rebounds
  player_with_largest_shoe = nil
  
  game_hash.each_value do |team|
    team[:players].each do |player, stats|
      if player_with_largest_shoe == nil || player_with_largest_shoe[:shoe] < stats[:shoe]
        player_with_largest_shoe = team[:players][player]
      end
    end
  end
  
  player_with_largest_shoe[:rebounds]
end

# big_shoe_rebounds
