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

function setup()
	size(600,500)
	local f = loadFont("data/Karla.ttf",15)
	textFont(f)
	bg = DklBaseGraphics:new(width(),height())
	x = {0,50,100,200,400,500}
	y = {0,4.7,5,4.5,20,25}
	col = {"#ff0000","#65ed00","#ffed00","#567bee","#e45a6a"}
    n = {" ","PANI","CECUDI","OTROS","PRIVADOS","CEN-CINAI"}
    z= {0,4,3,2,7,10}
    texto ="Cantidad de centros infantiles y numero de menores beneficiados,.. "
end

function draw()
	background(255)
    translate(60,2)
	bg:par({mfrom={6,6}})
    bg:par({mar={4,4,2,2}})
    bg:plot(x,y,{type="p",bty="n",col=col,cex=z,main=texto,xlab="Cantidad de Centros",ylab="Cantidad de Beneficiarios en Miles"})
    bg:text(x,y,n,{pos=2,cex=9})







end

