# reversing

## Install frida
```
pipx install frida-tools
```

## Compile sample program
```
gcc -o dice dice.c
```


## Run 

```
./dice
```

## Run with frida

```
frida -f ./dice -l hook_srand.js
```