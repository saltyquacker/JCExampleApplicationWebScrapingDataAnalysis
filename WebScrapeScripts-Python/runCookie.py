#handles shop.chamba's json for now
#stores are differentiated by cookies

from math import trunc
import requests
import json
from datetime import datetime 
import threading

def getCookie():
    kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1','Sunday Driver','Lemon Cheese','Leeroy','Tinashe','Tang Breath']

    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")
    #6 of spade only has 1 location
    url = 'https://shop.chamba.ca/ht/api/objects/kiosk/products?on_hand=true&cannabis=true&is_active=true&page_size=21&page=0&onsale=0&favorites=0&newproducts=0&featured=0&sativa=false&hybrid=false&indica=false&search=jonny&order_by=thc_high'
    for i in range(0,2,1):
        storename = ""
        address=""
        city =""
        prov="ON"

        storename = "Chamba Cannabis Co."
        if i == 0:
            cookies={'store_id':'18','store_city':'Brampton'}
            address= "20 Gillingham Drive"
            city = "Brampton"
            
        if i ==1:
            cookies={'store_id':'9','store_city':'Waterloo'}
            address= "425 University Ave E"
            city = "Waterloo"

        collectSites = open("cookieSites.csv","a")
        collectSites.write(storename+","+address+"\n")

        response=requests.get(url,cookies=cookies)

        json_data = json.loads(response.text)
        itemCount = len(json_data)
        print(itemCount)

        for i in range(0,itemCount,1):
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
            outstock = json_data[i]['out_of_stock']
            if outstock ==False:
                brand = json_data[i]['brand_name']
                prodName = json_data[i]['description']
                for k in kushnames:
                    if k in prodName:
                        prodName =k
                prodType = json_data[i]['category_group_name']
                if prodType =="Vapes":
                    prodType = "Vaporizers"
                price = float(json_data[i]['price'])
               
                try:
                    salepercent = float(json_data[i]['product_discount'])
                    if salepercent ==None:
                        salepercent =""
                    else:
                        temp= salepercent/100
                        saleprice = saleprice*temp

                    
                    salepercent = trunc(salepercent)
                    saleprice = round(saleprice,2)
                    #print("SALE")
                except Exception as e:
                    #print("NO SALE")
                    pass
                qty =float( json_data[i]['on_hand'])
                qty = trunc(qty)
                weight = json_data[i]['uom']
                if weight =="3X0.5G":
                    weight = "1.5g"

                price = round(price,2)
                item = storename+","+ address+","+city+","+prov+","+brand+","+prodName+","+prodType+","+str(thcRange)+","+weight+","+str(qty)+","+str(price)+","+str(saleprice)+","+str(salepercent)+"," +special+","+docDate+'\n'
                file = open("JonnyC"+docDate+".csv","a")
                file.write(item)
                file.close()

    


       


def main():
    thread = threading.Thread(target=getCookie)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE GETTING COOKIES" )



if __name__ == '__main__':
    main()