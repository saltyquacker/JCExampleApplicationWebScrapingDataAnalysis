from difflib import SequenceMatcher

ocsfile = open('newocs03.csv','r')
ocsinfo = ocsfile.readlines()

latestJCfile = open('JonnyC2022-01-05.csv','r')
jcinfo = latestJCfile.readlines()

#data table format ocsstorename,ocsaddress,datastorename,dataaddress,menuurl,platform
#make master list
management = open("management.csv","r")
platforms = management.readlines()
management.close()

#remove header
platforms.pop(0)


uniqueJC =[]


for u in jcinfo:
    prov = u.split(',')[3]
    name = u.split(',')[0]
    address = u.split(',')[1]
    #check files for items
    #only in this province
    if prov =="ON":
        #open file
        for p in platforms:
            platform = p.split(",")[0]
            filename = p.split(",")[1]
            filename = filename.replace("\n","")

            fileholder = open(filename+".csv","r")
            filelines = fileholder.readlines()
            for f in filelines:
                if name in f:
                    check = name+','+address+','+platform
                    if check not in uniqueJC:
                        uniqueJC.append(check)
            


def similar(a, b):
    
    return SequenceMatcher(None, a, b).ratio()

checkpairocs=[]
checkpairjc=[]
for o in ocsinfo:
    #index 1 is compare addresses
    oname = o.split(',')[0]
    oname = oname.lower()
    oadd = o.split(',')[1]
    oadd = oadd.lower()
    ostatus = o.split(',')[7]
    
    for j in uniqueJC:
        jadd = j.split(',')[1]
        jname = j.split(',')[0]
        jplat = j.split(',')[2]

        jadd= jadd.lower()
        jname = jname.lower()
        ratio = similar(oadd,jadd)
        if ratio >0.73:#if ratio is close
            #compare only numbers
            onum = oadd.split(' ')[0]
            jnum = jadd.split(' ')[0]
            if onum == jnum:
                
                #print("OCS Name: "+oname+ " - "+oadd+"\nSTORE Name: "+jname+ " - "+jadd+"\n\n")
                makenew = open('SortedOCStoJC04.csv','a')
                makenew.write(oname+ ","+oadd+","+jname+ ","+jadd+","+str(ratio)+","+ostatus+","+jplat+",address\n")
                makenew.close
                checkpairocs.append(oname+ ","+oadd+","+ostatus)
                checkpairjc.append(jname+ ","+jadd+","+jplat)
                break
print("FINISHED FIRST PASS - Compare Address")
ocssecond = []
jcsecond=[]
for i in ocsinfo:
    oname = i.split(',')[0]
    oname = oname.lower()
    oadd = i.split(',')[1]
    oadd = oadd.lower()
    ostatus = i.split(",")[7]
    makepair = oname+ ","+oadd+","+ostatus
    if makepair not in checkpairocs:
        ocssecond.append(makepair)
        #makenew = open('nofindOCS.csv','a')
        #makenew.write(oname+ " - "+oadd+"\n")
        #makenew.close

for i in uniqueJC:
    jname = i.split(',')[0]
    jname = jname.lower()
    jadd = i.split(',')[1]
    jadd = jadd.lower()
    jplat = i.split(',')[2]

    makepair = jname+ ","+jadd+","+jplat
    if makepair not in checkpairjc:
        jcsecond.append(makepair)
        #makenew = open('nofindJC.csv','a')
        #makenew.write(jname+ " - "+jadd+"\n")
        #makenew.close


#do a second pass with just names
for o in ocssecond:
    #index 0 is compare names
    oname = o.split(',')[0]
    oname = oname.lower()
    oadd = o.split(',')[1]
    oadd = oadd.lower()
    ostatus = o.split(',')[2]
    
    for j in jcsecond:
        jadd = j.split(',')[1]
        jname = j.split(',')[0]
        jplat = j.split(',')[2]

        jadd= jadd.lower()
        jname = jname.lower()
        ratio = similar(oname,jname)
        if ratio >0.6:#if ratio is close
            #compare only numbers
            onum = oadd.split(' ')[0]
            jnum = jadd.split(' ')[0]
            if onum == jnum:
                #print("OCS Name: "+oname+ " - "+oadd+"\nSTORE Name: "+jname+ " - "+jadd+"\n\n")
                makenew = open('SortedOCStoJC04.csv','a')
                makenew.write(oname+ ","+oadd+","+jname+ ","+jadd+","+str(ratio)+","+ostatus+","+jplat+",name\n")
                makenew.close
                checkpairocs.append(oname+ ","+oadd+","+ostatus)
                checkpairjc.append(jname+ ","+jadd+","+jplat)
                break



print("FINISHED SECOND PASS - Compare NAME")
ocsthird = []
jcthird=[]
for i in ocssecond:
    oname = i.split(',')[0]
    oname = oname.lower()
    oadd = i.split(',')[1]
    oadd = oadd.lower()
    ostatus = i.split(',')[2]
    makepair = oname+ ","+oadd+","+ostatus
    if makepair not in checkpairocs:
        ocsthird.append(makepair)
        makenew = open('nofindOCS04.csv','a')
        makenew.write(oname+ ","+oadd+","+ostatus+"\n")
        makenew.close

for i in jcsecond:
    jname = i.split(',')[0]
    jname = jname.lower()
    jadd = i.split(',')[1]
    jadd = jadd.lower()
    jplat = i.split(',')[2]

    makepair = jname+ ","+jadd+","+jplat
    if makepair not in checkpairjc:
        jcthird.append(makepair)
        makenew = open('nofindJC04.csv','a')
        makenew.write(jname+ ","+jadd+","+jplat+"\n")
    #makenew.close