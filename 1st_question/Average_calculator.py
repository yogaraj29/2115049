from fastapi import FastAPI
import requests

evenurl="http://20.244.56.144/test/even"
randurl="http://20.244.56.144/test/rand"
primeurl="http://20.244.56.144/test/primes"
fiburl="http://20.244.56.144/test/fibo"

headers = {
    'Authorization': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJNYXBDbGFpbXMiOnsiZXhwIjoxNzE4ODYwMDg3LCJpYXQiOjE3MTg4NTk3ODcsImlzcyI6IkFmZm9yZG1lZCIsImp0aSI6ImU4OWNlMzMyLTMzZTMtNGU4MC05ODc5LTE3Mjg1YTA2MzA5YyIsInN1YiI6IjIxMTUwNDlAbmVjLmVkdS5pbiJ9LCJjb21wYW55TmFtZSI6IllfbWFydCIsImNsaWVudElEIjoiZTg5Y2UzMzItMzNlMy00ZTgwLTk4NzktMTcyODVhMDYzMDljIiwiY2xpZW50U2VjcmV0IjoiVmlxaWVSTG5meFpvdWt6dyIsIm93bmVyTmFtZSI6IllPR0FSQUoiLCJvd25lckVtYWlsIjoiMjExNTA0OUBuZWMuZWR1LmluIiwicm9sbE5vIjoiMjExNTA0OSJ9.IL7nLt-KGwdYQTSDfXBDtf96Uur61kh447UgObSjhA0',
    'Content-Type': 'application/json',
    'Accept': 'application/json'
}

app=FastAPI()
window=[]


@app.get("/number/e")
def avgnum():
    response=requests.get(evenurl,headers=headers)
    print(response)
    
    server_res=response.numbers
    prev_window=window
    for i in server_res:
        if len(window)==10:
            window.pop(0)
        window.append(i)
    avg=int((sum(window)/len(window)))
    return{
        "numbers" :server_res,
        "windowPrevState": prev_window,
        "windowCurrState" :window,
        "avg" :avg
    }
    
@app.get("/number/p")
def avgnum():
    response=requests.get(primeurl,headers=headers)    
    server_res=response.numbers
    prev_window=window
    for i in server_res:
        if len(window)==10:
            window.pop(0)
        window.append(i)
    avg=int((sum(window)/len(window)))
    return{
        "numbers" :server_res,
        "windowPrevState": prev_window,
        "windowCurrState" :window,
        "avg" :avg
    }

@app.get("/number/r")
def avgnum():
    response=requests.get(randurl,headers=headers)
    server_res=response.numbers
    prev_window=window
    for i in server_res:
        if len(window)==10:
            window.pop(0)
        window.append(i)
    avg=int((sum(window)/len(window)))
    return{
        "numbers" :server_res,
        "windowPrevState": prev_window,
        "windowCurrState" :window,
        "avg" :avg
    }

@app.get("/number/f")
def avgnum():
    response=requests.get(fiburl,headers=headers)
    server_res=response.numbers
    prev_window=window
    for i in server_res:
        if len(window)==10:
            window.pop(0)
        window.append(i)
    avg=int((sum(window)/len(window)))
    return{
        "numbers" :server_res,
        "windowPrevState": prev_window,
        "windowCurrState" :window,
        "avg" :avg
    }