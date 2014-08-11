--[[
	Copyright (c) 2013 Christopher E. Moore ( christopher.e.moore@gmail.com / http://christopheremoore.net )

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
--]]

require 'ext.math'
require 'ext.table'
require 'ext.string'
require 'ext.io'
require 'ext.serialize'
class = require 'ext.class'

-- this should go in OS i suppose ...
_ = os.execute

-- and this goes wherever packages and the likes would go
-- it would be awesome to track loaded dependencies and auto-reload them too
-- should be easy to do by overriding 'require'
function reload(n) package.loaded[n] = nil return require 'n' end

-- for-loop to generate a table
function range(a,b,c)
	local t = table()
	if c then
		for x=a,b,c do
			t:insert(x)
		end
	else
		for x=a,b do
			t:insert(x)
		end
	end
	return t
end

