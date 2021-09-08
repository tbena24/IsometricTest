--# Constants
local grid_size = 20

--# Variables
local blockImage = love.graphics.newImage("block_test.png")

local Blocks = {}
local Grid = {}

local Block = {}

--[[# Block Module
function Block.new(Image)
  local newBlock = {
    width = Image:getWidth(),
    height = Image:getHeight(),
    depth = height / 2
  }
end]]

--# Execution
for x = 1, grid_size do
  Grid[x] = {}
  for y = 1, grid_size do
    Grid[x][y] = 1
  end
end

local block_width = blockImage:getWidth()/2
local block_height = blockImage:getHeight()/2
local block_depth = block_height/2
local grid_x = 0
local grid_y = 0

Grid[2][4] = 2
Grid[6][5] = 2

function love.draw()
  for x = 1,grid_size do
     for y = 1,grid_size do
        if Grid[x][y] == 1 then
           love.graphics.draw(blockImage,
              grid_x + ((y-x) * (block_width / 2)),
              grid_y + ((x+y) * (block_depth / 2)) - (block_depth * (grid_size / 2)))
        else -- Grid[x][y] == 2
           love.graphics.draw(blockImage,
              grid_x + ((y-x) * (block_width / 2)),
              grid_y + ((x+y) * (block_depth / 2)) - (block_depth * (grid_size / 2)))
        end
     end
  end
end
