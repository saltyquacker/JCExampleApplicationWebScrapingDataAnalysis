
from re import S
import requests
import pprint
import json
import threading
import time
from datetime import datetime 
import os.path


def getDutchie():
    

    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")
    provinces =['ON','AB','BC','SK','MB']
    dispIDFile = open("filtereddutchie2022-01-08.csv",'r')
    dispinfo = dispIDFile.readlines()
    dispIDFile.close()
    #print("Canadian Dispensaries: "+ str(len(dispinfo)))

    openProv =[[],[],[],[],[]]
    closedProv=[[],[],[],[],[]]

    for d in range(0,len(dispinfo),1):
        splitDisp = dispinfo[d].split(',')
        for p in range(0,len(provinces),1):
            if provinces[p] == splitDisp[5]:
                if 'open' in dispinfo[d]:

                    openProv[p].append(dispinfo[d])
 
                    break
        
                elif 'closed' in dispinfo[d]:

                    closedProv[p].append(dispinfo[d])
                    break

    #print(len(openProv))
    #only write if jc file does not exist
    jcFile = open("JonnyC"+docDate+"DUTCHIE.csv","w")
    jcFile.write("dispensary,address,city,province,brand,product,type,thcrange,weight,currentstock,price,saleprice,percent,special,date\n")
    jcFile.close()
    error = open('couldntOpenStore'+docDate+'.csv','w')
    error.close()
    kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1','Sunday Driver','Lemon Cheese','Leeroy','Tinashe','Tang Breath','OG Kush']


    
    couldNotGetStore=[]
    productsPerPage =50
    dispensaryID = ""
    #each province
    #every 100 or so stores, do a CD
    count=0
    for lop in range(0,len(openProv),1):
        #each item in that province
       
        for d in range(0,len(openProv[lop]),1):
            count+=1
            print("Store #:"+str(count))
            #if count %200 == 0:
             #   print("Sleep on 200")
              #  time.sleep(200)
            address=""
            city=""
            prov=""
            splitDispInfo = openProv[lop][d].split(',')
            print(splitDispInfo)
            dispensaryID=splitDispInfo[0]
            dispensaryName = splitDispInfo[2]
            #if "Hunny" in dispensaryName:
             #   print("WAIT HERE!")
            address= splitDispInfo[3]
            city=splitDispInfo[4]
            prov= splitDispInfo[5]

            #if prov == "ON":
             #   collectSites = open("dutchieSites.csv","a")
              #  collectSites.write(dispensaryName+","+address+"\n")
            try: #this is if link or whatever fails, just dont add it
                #print(str(d)+"/"+str(len(openProv[lop])))

                #get dispensary id

                url = "https://dutchie.com/graphql?operationName=FilteredProducts&variables=%7B%22includeCannabinoids%22%3Afalse%2C%22showAllSpecialProducts%22%3Atrue%2C%22productsFilter%22%3A%7B%22dispensaryId%22%3A%22"+dispensaryID+"%22%2C%22pricingType%22%3A%22rec%22%2C%22strainTypes%22%3A%5B%5D%2C%22subcategories%22%3A%5B%5D%2C%22Status%22%3A%22Active%22%2C%22removeProductsBelowOptionThresholds%22%3Atrue%2C%22types%22%3A%5B%5D%2C%22query%22%3A%22jonnych%22%2C%22useCache%22%3Afalse%2C%22sortDirection%22%3A1%2C%22sortBy%22%3Anull%2C%22isDefaultSort%22%3Atrue%2C%22bypassOnlineThresholds%22%3Afalse%2C%22isKioskMenu%22%3Afalse%7D%2C%22page%22%3A0%2C%22perPage%22%3A"+str(productsPerPage)+"%7D&extensions=%7B%22persistedQuery%22%3A%7B%22version%22%3A1%2C%22sha256Hash%22%3A%22100140de348495b06d0278c0e546445297d07751c3dfa4b0567ee75604b4cead%22%7D%7D"
                #print(url)
                #print(url)
                response = requests.get(url)
                json_data =json.loads(response.text)
                #print(json_data)
                
            
                #Find amount at
                try:
                    allItems = []
                    try:
                        allItems = json_data["data"]["filteredProducts"]['products']
                    except Exception as e:
                        allItems =[]
                        #if doesnt return data, itll return error, let it sleep for 30 seconds to cooldown to query again
                        print("Error: on CD")
                        time.sleep(120)
                        response = requests.get(url)
                        json_data =json.loads(response.text)
                        allItems = json_data["data"]["filteredProducts"]['products']


                    totalCount = len(allItems)
                    print(totalCount)
                   
                    saleprice = ""
                    salepercent =""
                    prodName = ""
                    prodType=""
                    thcRange=""
                    price=""
                    special=""
                    
                    


                    if totalCount>0:
                        for i in range(0,int(totalCount),1):
                        #get store info prior to grabbing item info
                        #get address
                        
                
                            #or just ignore it!
                            try:
                                brand = str(json_data["data"]["filteredProducts"]["products"][i]["brandName"])
                            except Exception as e:
                                pass
                                #print("cant get item")
                            #check if this is JC, if not, keep going!
                            uniqueNoJC=[]
                            if brand == "Jonny Chronic" or brand =="Jonny Economy"or brand =="OCS"or brand == "JC Green Cannabis Inc":
                                isJonny = True
                            #Mihi Cannabis wtf
                                if brand == "OCS" or brand =="JC Green Cannabis Inc":
                                    brand = "Jonny Chronic"
                                
                                #check multiple products? options tag
                                allOptions = []
                                try:
                                    allOptions = json_data["data"]["filteredProducts"]["products"][i]["Options"]
                                    #for opt in allOptions:
                                        #print(opt)
                                
                                except Exception as e:
                                    pass
                                    #print("Couldn't get multi products")
                                    #print(url)

                                #for each option, get info
                                for o in range(0,len(allOptions),1):
                                    saleprice = ""
                                    salepercent =""
                                    prodName = ""
                                    prodType=""
                                    thcRange=""
                                    price=""
                                    special=""
                                    try:
                                        #make line for product
                                        prodName = str(json_data["data"]["filteredProducts"]["products"][i]["Name"])
                                        #this is to get rid of non ascii chars such as emojis
                                        prodName = prodName.encode("ascii","ignore")
                                        prodName = prodName.decode()
                                  

                                        prodName = prodName.lower()
                                        for type in kushnames:
                                            if type.lower() in prodName:
                                                prodName = type
                                            elif "crown" in prodName:
                                                prodName = "Blueberry Kush"
                                    
                                    except Exception as e:
                                        #print("cant get item name")
                                        #print(url)
                                        pass
                                        
                                    try:
                                        prodType = str(json_data["data"]["filteredProducts"]["products"][i]["type"])
                                    
                                    
                                    except Exception as e:
                                        #print("cant get prodType")
                                        #print(url)
                                        pass
                                    try:
                                        thcRange = str(json_data["data"]["filteredProducts"]["products"][i]["THCContent"]["range"])
                                        #range looks like[,]
                                
                                        thcRange= thcRange.replace(",","-")
                                    
                                        #weight = str(json_data["data"]["filteredProducts"]["products"][i]["measurements"]["netWeight"]["values"])
                                        #unit = str(json_data["data"]["filteredProducts"]["products"][i]["measurements"]["netWeight"]["unit"])
                                        #if weight =="":
                                    except Exception as e:
                                        #print("cant get thc")
                                        #print(url)
                                        pass

                                    try:
                                
                                        price =str(json_data["data"]["filteredProducts"]["products"][i]["recPrices"][o])
                                        #weight = str(json_data["data"]["filteredProducts"]["products"][i]["measurements"]["netWeight"]["values"])
                                        #unit = str(json_data["data"]["filteredProducts"]["products"][i]["measurements"]["netWeight"]["unit"])
                                        #if weight =="":
                                    except Exception as e:
                                        #print("cant get price")
                                        #print(url)
                                        pass

                                    try:
                                        weight = str(json_data["data"]["filteredProducts"]["products"][i]["Options"][o])
                                        #some stores use oz? wtf
                                        #sanitize cause its gross
                                        if weight=="1/8oz":
                                            weight ="3.5g"
                                        if weight=="3x0.5g":
                                            weight="1.5g"
                                        if weight =="1g":
                                            weight ="1.0g"
                                        if weight ==".5g":
                                            weight ="0.5g"
                                        if weight =="4g": #nick said this is just flower weight, only in 1g vapes
                                            weight ="1.0g"
                                        if weight =="N/A": 
                                            weight ="1.0g"
                                        if weight =="2g":
                                            if type=="Vaporizers":
                                                weight ="0.5g"
                                            if type =="Pre-Rolls":
                                                weight ="1.5g"
                                    except Exception as e:
                                        #print("Could not find Weight")
                                        #print(url)
                                        pass
                                    try:
                                        qis = str(json_data["data"]["filteredProducts"]["products"][i]["POSMetaData"]["children"][0]["quantity"])
                                    #special = str(json_data["data"]["filteredProducts"]["products"][i]["special"])
                                    except Exception as e:
                                        #print("cant get qis")
                                        #print(url)
                                        pass

                                    try:
                                        saleprice =str(json_data["data"]["filteredProducts"]["products"][i]["recSpecialPrices"][o])
                                        salepercent = str(json_data["data"]["filteredProducts"]["products"][i]["specialData"]["saleSpecials"][o]["discount"])
                                        #print("SALE!")
                                    except Exception as e:
                                        #print("No Sale")
                                        pass

                                    #special staff pick is [featured][current]
                                    try:
                                        special =str(json_data["data"]["filteredProducts"]["products"][i]['featured']['current'])
                                        if special!="":
                                            special="TRUE"
                                        elif special =="None":
                                            special ="FALSE"
                                        else:
                                            special="FALSE"
                                    except Exception as e:
                                        #print("No Sale")
                                        special="FALSE"
                                    
                                    
                                    try:
                                        priceDec = price.find('.') +3
                                        price =  price[:priceDec]
                                    except Exception as e:
                                        pass
                                        #print('price is fine')

                                    dispensaryName = dispensaryName.replace(',',"")
                                    JCitem =dispensaryName+","+address+","+ city+","+ prov+","+brand+","+prodName+","+prodType+","+thcRange+","+weight+","+qis+","+price+","+saleprice+","+salepercent+"," +special+","+docDate+'\n'
                                    JCitem = JCitem.replace("[","")
                                    JCitem = JCitem.replace("]","")
                                    
                              
                                    jcFile = open("JonnyC"+docDate+"DUTCHIE.csv","a")
                                    jcFile.write(JCitem)
                                    jcFile.close()
                    else:
                        if dispensaryName not in uniqueNoJC:
                            uniqueNoJC.append(dispensaryName)
                            
                            dispensaryName = dispensaryName.replace(',',"")
                            noJCItem = dispensaryName +","+address+","+city+","+prov+","+"NO PRODUCTS,,,,,,,,,,"+docDate+"\n"
                            
                

                            noJCFile = open("JonnyC"+docDate+"DUTCHIE.csv","a")
                            noJCFile.write(noJCItem)
                            noJCFile.close()
                            #else just ignore!                           
                except Exception as e:
                    error = open('couldntOpenStore'+docDate+'.csv','a')
                    error.append(openProv[lop])
                    error.close()
            except Exception as e:
                pass
                #print("Couldn't perform!")
                        
    #error dispensaries

    #put all in list
    
  
def main():
    thread = threading.Thread(target=getDutchie)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE DUTCHIE" )



if __name__ == '__main__':
    main()