const shortestWalk = require("./shortestWalk")

describe("shortestWalk", () => {
    it("should return valid direction (WEST)", () => {
        expect(shortestWalk(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])).toEqual(["WEST"])
    })
    it("should return valid directions (SOUTH,WEST)", () => {
        expect(shortestWalk(["SOUTH","NORTH", "SOUTH", "SOUTH", "EAST", "WEST","NORTH", "WEST"])).toEqual(["SOUTH","WEST"])
    })
    it("should return empty walk", () => {
        expect(shortestWalk(["NORTH", "SOUTH", "EAST", "WEST"])).toEqual([])
    })
})