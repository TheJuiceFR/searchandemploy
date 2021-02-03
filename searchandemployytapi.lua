inFile=io.open("dataytapi.txt",'r')
outFile=io.open("outytapi.txt",'w')

n=0

repeat
	local line=inFile:read()
	if line~=nil then
		local pos=string.find(line,'"publishedAt"')
		if pos~=nil then
			outFile:write(string.sub(line,pos+16,pos+35),"	")
		end
        pos=string.find(line,'"title"')
		if pos~=nil then
            local pos2=string.find(line,'"',pos+10)
            if pos2~=nil then
			    outFile:write(string.sub(line,pos+10,pos2-1),"	")
            end
		end
		pos=string.find(line,'"description"')
		if pos~=nil then
			outFile:write(string.sub(line,pos+16,-3),"	")
		end
		pos=string.find(line,'"videoId"')
		if pos~=nil then
			outFile:write(string.sub(line,pos+12,pos+22),"\n")
		end
	end
	
	n=n+1
	if n%10==0 then
		print(n)
	end
	
until line==nil
