import requests
import json
from datetime import datetime 
import threading

def getSuperAnytime():
    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")
    locid=""
    #automatically looks for jonny products
    #file = open("JONNYCHRONI"+docDate+".csv","w")
    #file.write("dispensary,address,city,province,brand,product,type,thcrange,weight,currentstock,price,saleprice,percent,special,date\n")
    #file.close()
    
    storesURL="https://www.superanytime.com/api/stores/allEnabled"
    locResponse=requests.get(storesURL)


    #addresses = json.loads(addResponse.text)
    locations = json.loads(locResponse.text)
    allLocations = 0
    #print(locations[0])
    #print(len(locations))
     #products = json.loads(prodResponse.text)
    #dispensary,address,city,province,brand,product,type,thcrange,weight,currentstock,price,saleprice,percent
    kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1']
    types=['Flower','Concentrate','Pre-Roll','Cartridge']
    
    #productCount = len(products['products'])
    #for item in range(0,productCount,1):
   
    #provinces =['ON','AB','BC','SK','MB']]
    dupeloc=("1922 Cannabis Retail - Queen and Sherbourne","Dutch Love - Theatre","Dutch Love - Merivale","Dutch Love - Parkdale","Dutch Love - Bramalea","Dutch Love - Danforth","Neku Cannabis - Hess Village","Edition X - Dupont & Spadina","Neku Cannabis - Stoney Creek","Cannabis Street - Toronto")
    #duplicate stores
    #stores needed to grab
    needstores=["Canna Cabana","Taste Buds","Cannabis Street","META","Cannabis Jacks","Corner Cannabis","NewLeaf","Vibe","Dime","Corktown","J Supply"]
 

    for l in range(0,len(locations),1):
        loctitle=""
        #for every location, grab items
        loctitle =locations[l]['title']

        for t in needstores:
           
            if t in loctitle:
            
                city=""
                address=""
                prov=""
                locid=""
            
                city=locations[l]['town']
                address=locations[l]['address']
                address=address.replace(","," ")
                prov=locations[l]['state']


                locid = locations[l]['id']
            
                #print(loctitle)
                #check if in canada
                #pretty sure all in canada, skip
                productURL="https://www.superanytime.com/api/search?storeId="+locid+"&query=jonny&category=&offset=0&minPrice=0&maxPrice=2147483647&limit=10000"
                #track = open("superSites.csv","r")
                #track.write(t+"\n")
                #track.close()
                
                #print(productURL)
                prodResponse = requests.get(productURL)
            
                #try:
                products= json.loads(prodResponse.text)
                #except Exception as e:
                #   print(e)
                
                total = products['total']
                #print(total)
                if total>0:
                    for p in range(0,total,1):
                        
                        name=""
                        type=""
                        price=""
                        saleprice=""
                        salepercent=""
                        thcRange=""
                        brand=""
                        qis=""
                        weight=""
                        special=""
                        
                        #filter out the bad brand names
                        brand = str(products['products'][p]["maker"])
                        if brand == "":
                            brand = "Jonny Chronic"
                        for k1 in kushnames:
                            if k1 in brand:
                                brand ="Jonny Chronic"

                        if brand =="Jonny Chronic":
                            temp = products["products"][p]["title"]
                            for k in kushnames:
                                if k in temp:
                                    name = k
                                
                            type =products['products'][p]['type']
                            if type == "Pre Roll":
                                type = "Pre-Rolls"

                            
                            price = products['products'][p]['price']
                            try:
                                tempPrice =  products['products'][p]['compareAtPrice']
                                if tempPrice!=None:
                                    saleprice = price
                                    price = tempPrice
                                    salepercent=(saleprice/price)*100
                                    salepercent = round(salepercent,2)
                                    salepercent = 100-salepercent
                            except Exception as e:
                                #print("NO SALE")
                                pass

                            #prices are in cents so 'convert' to dollars
                            pricet = str(price)
                            splitAt = -2
                            pricefront =pricet[:splitAt]
                            priceback = pricet[splitAt:]
                            price = pricefront+"."+priceback
                            #print(price)
                            if saleprice!="":
                                salepricet = str(saleprice)
                                splitAt = -2
                                spricefront =salepricet[:splitAt]
                                spriceback = salepricet[splitAt:]
                                saleprice = spricefront+"."+spriceback

                            if type =="Vape":
                                type = "Vaporizers"
                            if type =="Accessories":
                                type ="Concentrate"
                        

                            
                        
                            weight = str(products['products'][p]['container'])
                            weight= weight.replace(" ","") #theres a whitespace
                            weight =weight.lower()
                            if weight =="3x0.5g":
                                weight ="1.5g"
                            if weight =="1g":
                                weight ="1.0g"
                            if weight =="2g":
                                if type=="Vaporizers":
                                    weight = "0.5g"
                                if type =="Pre-Rolls":
                                    weight ="1.5g"
                            if weight=="":
                                if type =="Flower":
                                    weight="3.5g"
                                if type=="Pre-Rolls":
                                    weight ="1.5g"
                            thcMin = str(products['products'][p]['thcLo'])
                            thcMax = str(products['products'][p]['thcHi'])
                            thcRange=thcMin+"- "+thcMax
                            qis = str(products['products'][p]['quantity'])
                        
                            if brand =="None":
                                brand = "Jonny Chronic"
                            
                            if name !="":
                                newItem =loctitle+","+ address+","+city+","+prov+","+brand+","+name+","+type+","+thcRange+","+weight+","+str(qis)+","+price+","+saleprice+","+str(salepercent)+","+special+','+docDate+'\n'
                                #print(newItem)
                                file = open("JonnyC"+docDate+".csv","a")
                                file.write(newItem)
                                file.close()
                else:
                    brand = "NO PRODUCTS"
                    noItem = loctitle+","+ address+","+city+","+prov+","+brand+",,,,,,,,,,"+docDate+"\n"
                    file = open("JonnyC"+docDate+".csv","a")
                    file.write(noItem)
                    file.close()
        #product Name
        
        #open JC File
        


def main():
    thread = threading.Thread(target=getSuperAnytime)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE SUPERANYTIME" )



if __name__ == '__main__':
    main()