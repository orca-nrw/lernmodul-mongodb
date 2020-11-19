import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]

mycol = mydb["customers"]
mydict = { "name": "John", "address": "Highway 37" }

x = mycol.insert_one(mydict)
print(mydb.list_collection_names())

# Python3 code to display hostname and
# IP address

# Importing socket library
import socket


# Function to display hostname and
# IP address
def get_Host_name_IP():
    try:
        host_name = socket.gethostname()
        host_ip = socket.gethostbyname(host_name)
        print("Hostname :  ", host_name)
        print("IP : ", host_ip)
    except:
        print("Unable to get Hostname and IP")

    # Driver code


get_Host_name_IP()  # Function call
