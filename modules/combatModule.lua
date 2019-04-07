local chaos = {}

local robot = require("component").robot
local sides = require("sides")

local distToChaos = 0
local towerHeight = 0

local east = 0 --0 = east 1=south 2=west 3=north
local south = 1
local west = 2
local north = 3

function chaos.init(Dist,Height)
	distToChaos = Dist
	towerHeight = Height
	return true
end

function chaos.killATower()
	
	for i = 1,5,1 do
			
		robot.swing(sides.front)
		move.Down(2)
		os.sleep(10)
		move.Up(2)
	end
		move.Up(5)

end

function chaos.takeShards(cx,cz) -- breaking the chaos shards, you need to kill the dragon before
	
	move.To(cx*distToChaos-150,110,cz*distToChaos)
	move.To(cx*distToChaos-150,1,cz*distToChaos)
	move.To(cx*distToChaos-1,1,cz*distToChaos)
	move.To(cx*distToChaos-1,80,cz*distToChaos)
	move.rotateTo(east)
	robot.swing(sides.front)
	move.To(cx*distToChaos-1,1,cz*distToChaos)
	os.sleep(41)

end

function chaos.killAllTower(cx,cz)
	
	move.To(cx*distToChaos-89,towerHeight+5,cz*distToChaos+21)--fly safe remember
	move.To(cx*distToChaos-89,towerHeight,cz*distToChaos+21)
	move.rotateTo(east)
	if robot.detect(sides.front) == false then
		return false
		end
	chaos.killATower()
	
	
	move.To(cx*distToChaos-71,towerHeight+5,cz*distToChaos+57)
	move.To(cx*distToChaos-71,towerHeight,cz*distToChaos+57)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos-39,towerHeight+5,cz*distToChaos+81)
	move.To(cx*distToChaos-39,towerHeight,cz*distToChaos+81)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos-2,towerHeight+5,cz*distToChaos+90)
	move.To(cx*distToChaos-2,towerHeight,cz*distToChaos+90)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos+37,towerHeight+5,cz*distToChaos+81)
	move.To(cx*distToChaos+37,towerHeight,cz*distToChaos+81)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos+68,towerHeight+5,cz*distToChaos+55)
	move.To(cx*distToChaos+68,towerHeight,cz*distToChaos+55)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos+85,towerHeight+5,cz*distToChaos+19)
	move.To(cx*distToChaos+85,towerHeight,cz*distToChaos+19)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos+85,towerHeight+5,cz*distToChaos-20)
	move.To(cx*distToChaos+85,towerHeight,cz*distToChaos-20)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos+70,towerHeight+5,cz*distToChaos-54)
	move.To(cx*distToChaos+70,towerHeight,cz*distToChaos-54)
	move.rotateTo(north)
	chaos.killATower()
	
	move.To(cx*distToChaos+38,towerHeight+5,cz*distToChaos-79)
	move.To(cx*distToChaos+38,towerHeight,cz*distToChaos-79)
	move.rotateTo(north)
	chaos.killATower()
	
	move.To(cx*distToChaos,towerHeight+5,cz*distToChaos-87)
	move.To(cx*distToChaos,towerHeight,cz*distToChaos-87)
	move.rotateTo(north)
	chaos.killATower()
	
	move.To(cx*distToChaos-37,towerHeight+5,cz*distToChaos-80)
	move.To(cx*distToChaos-37,towerHeight,cz*distToChaos-80)
	move.rotateTo(west)
	chaos.killATower()
	
	move.To(cx*distToChaos-68,towerHeight+5,cz*distToChaos-55)
	move.To(cx*distToChaos-68,towerHeight,cz*distToChaos-55)
	move.rotateTo(west)
	chaos.killATower()
	
	move.To(cx*distToChaos-85,towerHeight+5,cz*distToChaos-18)
	move.To(cx*distToChaos-85,towerHeight,cz*distToChaos-18)
	move.rotateTo(west)
	chaos.killATower()
	
	move.To(cx*distToChaos-45,111+5,cz*distToChaos-9)
	move.To(cx*distToChaos-45,111,cz*distToChaos-9)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos-36,111+5,cz*distToChaos+28)
	move.To(cx*distToChaos-36,111,cz*distToChaos+28)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos-2,111+5,cz*distToChaos+45)
	move.To(cx*distToChaos-2,111,cz*distToChaos+45)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos+33,111+5,cz*distToChaos+27)
	move.To(cx*distToChaos+33,111,cz*distToChaos+27)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos+41,111+5,cz*distToChaos-10)
	move.To(cx*distToChaos+41,111,cz*distToChaos-10)
	move.rotateTo(east)
	chaos.killATower()
	
	move.To(cx*distToChaos+19,111+5,cz*distToChaos-38)
	move.To(cx*distToChaos+19,111,cz*distToChaos-38)
	move.rotateTo(north)
	chaos.killATower()
	
	move.To(cx*distToChaos-17,111+5,cz*distToChaos-40)
	move.To(cx*distToChaos-17,111,cz*distToChaos-40)
	move.rotateTo(west)
	chaos.killATower()
	
	move.To(cx*distToChaos-43,111+5,cz*distToChaos-11)
	move.To(cx*distToChaos-43,111,cz*distToChaos-11)
	move.rotateTo(south)
	chaos.killATower()
	
	return true

end

return chaos
