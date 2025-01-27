// Intercept the 'srand' function
Interceptor.attach(Module.findExportByName(null, 'srand'), {
    onEnter: function(args) {
        // The first argument is the seed for srand
        // var seed = args[0].toInt32();
        args[0] = ptr(42);
        console.log('srand called with seed 42');
        
        // Optionally, modify the seed before passing it on (e.g., change the seed)
        // args[0] = ptr(12345);  // Uncomment this line to change the seed
    },
    onLeave: function(retval) {
        // Do something after the srand function returns, if needed
    }
});
