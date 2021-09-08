--# Constants
local grid_size = 20

--# Variables
local blockImage = love.graphics.newImage("block_test.png")

local Blocks = {}
local Grid = {}

local Block = {}

--# Block Module
function Block.new(Image)
  local newBlock = {
    width = Image:getWidth(),
    height = Image:getHeight(),
    depth = height / 2
  }
end

--# Execution
for x = 1, grid_size do
  grid[x] = {}
  for y = 1, grid_size do
    grid[x][y] = 1
  end
end

grid[2][4] = 2
grid[6][5] = 2

for x = 1,grid_size do
   for y = 1,grid_size do
      if grid[x][y] == 1 then
         love.graphics.draw(blockImage,
            grid_x + ((y-x) * (block_width / 2)),
            grid_y + ((x+y) * (block_depth / 2)) - (block_depth * (grid_size / 2)))
      else -- grid[x][y] == 2
         love.graphics.draw(blockImage,
            grid_x + ((y-x) * (block_width / 2)),
            grid_y + ((x+y) * (block_depth / 2)) - (block_depth * (grid_size / 2)))
      end
   end
end
