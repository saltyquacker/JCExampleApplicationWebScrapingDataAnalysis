#track ocs csv file :)

import pandas as pd
import requests
import json
from datetime import datetime 
import threading

now = datetime.now()
startTime = now.strftime("%d/%m/%Y %H:%M:%S")
docDate= now.strftime("%Y-%m-%d")



def getOCS():
    #data = pd.read_csv('https://www.agco.ca/cannabis-license-applications-download')
    #print(data)
    #ocsholder=[]
    #auth = 0

    #ocsholder.append('name,address,city,status,datepulled\n')
    #for i,row in data.iterrows():
        #name = row['Store Name'].replace(',','')
        #address = row['Address'].replace(',','')
        #city = row['Municipality or First Nation'].replace(',','')
        #ocsholder.append(name+","+address+","+city+","+row['Store Application Status']+","+docDate+'\n')
        #if row['Store Application Status']=='Authorized to Open':
         #   auth+=1
        

   
    #ocsfile = open('ocs'+docDate+'.csv','w')
    #for o in ocsholder:
     #   ocsfile.write(o)
    #ocsfile.close()
    #print("Auth:"+auth)
    #** NOW GETTING DIRECTLY FROM MAP QUERIES
    
    queries=['https://services9.arcgis.com/8LLh665FxwX7bxLB/arcgis/rest/services/AGCOCannabisActive/FeatureServer/1/query?f=json&returnGeometry=true&spatialRel=esriSpatialRelIntersects&geometry={"xmin":-10018754.171396945,"ymin":5009377.085700965,"xmax":-7514065.628548954,"ymax":7514065.628548954,"spatialReference":{"wkid":102100}}&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile','https://services9.arcgis.com/8LLh665FxwX7bxLB/arcgis/rest/services/AGCOCannabisActive/FeatureServer/1/query?f=json&returnGeometry=true&spatialRel=esriSpatialRelIntersects&geometry={"xmin":-12523442.714244936,"ymin":5009377.085700965,"xmax":-10018754.171396945,"ymax":7514065.628548954,"spatialReference":{"wkid":102100}}&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile','https://services9.arcgis.com/8LLh665FxwX7bxLB/arcgis/rest/services/AGCOCannabisPending/FeatureServer/1/query?f=json&returnGeometry=true&spatialRel=esriSpatialRelIntersects&geometry=%7B%22xmin%22%3A-10018754.17139695%2C%22ymin%22%3A5009377.085700974%2C%22xmax%22%3A-8766409.899972957%2C%22ymax%22%3A6261721.3571249675%2C%22spatialReference%22%3A%7B%22wkid%22%3A102100%7D%7D&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile','https://services9.arcgis.com/8LLh665FxwX7bxLB/arcgis/rest/services/AGCOCannabisActive/FeatureServer/1/query?f=json&returnGeometry=true&spatialRel=esriSpatialRelIntersects&geometry=%7B%22xmin%22%3A-8766409.899972957%2C%22ymin%22%3A5009377.085700974%2C%22xmax%22%3A-7514065.628548961%2C%22ymax%22%3A6261721.3571249675%2C%22spatialReference%22%3A%7B%22wkid%22%3A102100%7D%7D&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile','https://services9.arcgis.com/8LLh665FxwX7bxLB/arcgis/rest/services/AGCOCannabisPending/FeatureServer/1/query?f=json&returnGeometry=true&spatialRel=esriSpatialRelIntersects&geometry=%7B%22xmin%22%3A-8766409.899972957%2C%22ymin%22%3A5009377.085700974%2C%22xmax%22%3A-7514065.628548961%2C%22ymax%22%3A6261721.3571249675%2C%22spatialReference%22%3A%7B%22wkid%22%3A102100%7D%7D&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile','https://services9.arcgis.com/8LLh665FxwX7bxLB/arcgis/rest/services/AGCOCannabisPublicNotice/FeatureServer/1/query?f=json&returnGeometry=true&spatialRel=esriSpatialRelIntersects&geometry=%7B%22xmin%22%3A-10018754.17139695%2C%22ymin%22%3A5009377.085700974%2C%22xmax%22%3A-8766409.899972957%2C%22ymax%22%3A6261721.3571249675%2C%22spatialReference%22%3A%7B%22wkid%22%3A102100%7D%7D&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile','https://services9.arcgis.com/8LLh665FxwX7bxLB/arcgis/rest/services/AGCOCannabisPublicNotice/FeatureServer/1/query?f=json&returnGeometry=true&spatialRel=esriSpatialRelIntersects&geometry=%7B%22xmin%22%3A-8766409.899972957%2C%22ymin%22%3A5009377.085700974%2C%22xmax%22%3A-7514065.628548961%2C%22ymax%22%3A6261721.3571249675%2C%22spatialReference%22%3A%7B%22wkid%22%3A102100%7D%7D&geometryType=esriGeometryEnvelope&inSR=102100&outFields=*&outSR=102100&resultType=tile']
   
    data=[]
    data.append('name,address,city,prov,postal,lat,lng,status\n')

    for q in queries:#only 2 i guess?
        ocsdata = requests.get(q)

        datajson = json.loads(ocsdata.text)
        total = len(datajson['features'])
        for i in range(0,total,1):
            #grab data
            status= datajson['features'][i]['attributes']['ApplicationStatus']
            lat= datajson['features'][i]['attributes']['Latitude']
            lng= datajson['features'][i]['attributes']['Longitude']
            store= datajson['features'][i]['attributes']['PremisesName']
            address= datajson['features'][i]['attributes']['StreetAddress']
            address= address.replace(',','')
            city = datajson['features'][i]['attributes']['City']
            city = city.replace(',','')
            prov = datajson['features'][i]['attributes']['Province']
            if prov =="Ontario":
                prov = "ON"
            postal = datajson['features'][i]['attributes']['PostalCode']
            item = store+","+address+","+city+","+prov+","+postal+","+str(lat)+","+str(lng)+","+status+","+docDate+'\n'
            if item not in data:
                data.append(item)


    file = open('newocs03.csv','w')
    for i in data:
        file.write(i)
    file.close

def main():
    thread = threading.Thread(target=getOCS)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    print("DONE OCS" )





if __name__ == '__main__':
    main()