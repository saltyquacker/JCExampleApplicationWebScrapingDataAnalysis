#GETS SWEET SEVEN CANNABIS PRODUCTS
#GREEN CLOUD 
#AZURE WEBSITES
from math import prod
import requests
import json
from datetime import datetime 
import threading
import time


def getSS():
    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")
    #4 locations/branches but cambridge is only doing pickup to waterloo so defaults to waterloo
    kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1','Sunday Driver','Lemon Cheese','Leeroy','Tinashe','Tang Breath']

    itemlist = []
    file = open('azureSites.csv','r')
    itemlist = file.readlines()
    file.close()
    itemlist.pop(0)


  
    headers = {'Content-Type':'application/json'}
    for items in itemlist:
        storename = ""
        url = ""
        branch = ""
        address = ""
        city=""
        prov = "ON"
        storename = items.split(',')[0]
        url = items.split(',')[1]
        branch = items.split(',')[2]
        address = items.split(',')[3]
        city = items.split(',')[4]
        city = city.replace("\n","")
        
        collectSites = open("azureSites02.csv","a")
        collectSites.write(storename+","+address+"\n")
        data={"ProductGroupId":"","SortId":1,"Page":1,"PageSize":15,"SearchText":"jonny chronic","Brand":[],"Weight":[],"Species":[],"BranchId":str(branch),"Terpene":"","Mood":"","THCMAX":100,"THCMIN":0,"CBDMAX":100,"CBDMIN":0,"FromExpressCheckout":False}

        response = requests.post(url,data=json.dumps(data),headers=headers)
        json_data = json.loads(response.text)
        
        productCount = len(json_data['data']['products'])
        if productCount>0:
            for i in range(0,productCount,1):
                saleprice = ""
                salepercent =""
                prodName = ""
                prodType=""
                thcRange=""
                price=""
                special=""
                qty = 0
                weight=""
                brand=""
                brand = json_data['data']['products'][i]['brand']
                if brand == "Jonny Chronic":
                    prodName = json_data['data']['products'][i]['name']
                    for type in kushnames:
                        if type in prodName:
                            prodName = type
                    weight = json_data['data']['products'][i]['weightPerUnit']
                    weight = str(weight) + "g"
                    price = json_data['data']['products'][i]['price']['price']
                    saleprice = json_data['data']['products'][i]['price']['discountedPrice']
                    if saleprice == price:
                        saleprice=""
                    else:
                        salepercent = saleprice/price*100
                        salepercent = round(salepercent,2)
                        salepercent = 100-salepercent
                    prodType = json_data['data']['products'][i]['category']
                    if prodType =="Dried Flower":
                        prodType = "Flower"
                    if prodType =="Vapes":
                        prodType ="Vaporizers"
                    #Pre-Rolls already in right format!
                    thcRange = json_data['data']['products'][i]['thC_LEVEL']
                    qty =json_data['data']['products'][i]['quantity']

                    item = storename+","+ address+","+city+","+prov+","+brand+","+prodName+","+prodType+","+str(thcRange)+","+weight+","+str(qty)+","+str(price)+","+str(saleprice)+","+str(salepercent)+"," +special+","+docDate+'\n'
                    file = open("JonnyC"+docDate+".csv","a")
                    file.write(item)
                    file.close()
        else:
            item = storename+","+ address+","+city+","+prov+",NO PRODUCTS,,,,,,,,,,"+docDate+"\n"
            file = open("JonnyC"+docDate+".csv","a")
            file.write(item)
            file.close()



def main():
    thread = threading.Thread(target=getSS)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE Azure Web Menus" )



if __name__ == '__main__':
    main()