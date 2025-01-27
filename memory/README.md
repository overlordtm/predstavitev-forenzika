# memory forensics

Dumpi pomnilnika niso v git-u, ker so preveliki. Nahajajo se na [povezavi](https://app.koofr.net/links/5f94bca2-ec44-4f2e-9d45-9bded94b7d7f)

Volatility3 [getting started guide](https://volatility3.readthedocs.io/en/stable/getting-started-linux-tutorial.html)


## Namestitev
```
pipx install volatility3
```


```
./vol.py -f xp-laptop-2005-06-25.img windows.pslist.PsList             

./vol.py -f xp-laptop-2005-06-25.img windows.dlllist --pid 4012
```