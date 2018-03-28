--
-- Example2_1.lua
--
-- Döiköl Base Graphics Library
--
-- Copyright (c) 2017-2018 Armando Arce - armando.arce@gmail.com
--
-- This library is free software; you can redistribute it and/or modify
-- it under the terms of the MIT license. See LICENSE for details.
--

require "dbg/DklBaseGraphics"

local bg
local x
local y
local col
local n
local z
local texto

local ejex
local ejey

local ejex2
local ejey2
local ejey3

function setup()
	size(600,500)
	local f = loadFont("data/Karla.ttf",15)
	textFont(f)
	bg = DklBaseGraphics:new(width(),height())
	
    x = {90,92,94,96,98,99}
	y = {45,52,40,38,36,37,11}
	z=  {22,15,14,13,12,11,11}
    
    ejey= {51,48}
    ejex= {98,98}
    
    ejex2={97,99}
    ejey2={50,50}
    
    n={"Extrema Extrema","Pobreza Total","","","",""}
    texto ="Region Chorotega:Hogares Pobreza y Pobreza Extrema "
end

function draw()
	background(255)
    translate(60,2)
    
	bg:par({mfrom={6,6}})
    bg:par({mar={4,4,2,2}})
    
    

    bg:plot(x,y,{type="l",bty="n",col="#567bee",main=texto,xlab="",ylab=""})
    bg:lines(x,z,{type="o",lwd=6,col="#ff0000"})
    bg:text(ejex,ejey,n,{pos=2,cex=2})
    bg:lines(ejex2,ejey2,{type="o",lwd=3,col="#ff0000"})
    
    ejey3={47,47}
    bg:lines(ejex2,ejey3,{type="o",lwd=3,col="#567bee"})






end

