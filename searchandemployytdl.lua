inFile=io.open("dataytdl.txt",'r')
outFile=io.open("outytdl.txt",'w')

n=0

terms={}
terms['"like_count"']=1
terms['"duration"']=1
terms['"view_count"']=1
terms['"id"']=1
terms['"dislike_count"']=1


for k,v in pairs(terms) do
	terms[k]=k:len()+2
	outFile:write(k,"	")
end
outFile:write("\n")

repeat
	local line=inFile:read()
	if line~=nil then
		
		for word,len in pairs(terms) do
			local pos=string.find(line,word)
			if pos~=nil then
				local pos2=string.find(line,',',pos+len)
				outFile:write(string.sub(line,pos+len,pos2-1),"	")
			end
        end
        outFile:write("\n")
        
	end
	
	n=n+1
	if n%10==0 then
		print(n)
	end
	
until line==nil
