local GAMES = {
  ["MUSCLE LEGENDS"] = 3623096087,
  ["GROW A GARDEN 2"] = 97598239454123
};
local function load(url)
  loadstring(game:HttpGet(url))();
end;
if game.PlaceId == GAMES["MUSCLE LEGENDS"] then
  load("https://raw.githubusercontent.com/toxicity-561/Games/refs/heads/main/MuscleLegends.luau");
elseif game.PlaceId == GAMES["GROW A GARDEN 2"] then
  load("https://raw.githubusercontent.com/toxicity-561/Games/refs/heads/main/GrowAGarden2.luau");
end;
