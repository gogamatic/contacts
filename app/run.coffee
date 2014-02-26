do (curl = curl) ->
  config = 
    # baseUrl: ''
    # paths: {} # Configure paths here
    packages: [
      name: 'curl', location: 'lib/curl/src/curl'
    ,
      name: 'wire', location: 'lib/wire', main: 'wire'
    ,
      name: 'cola', location: 'lib/cola', main: 'cola'
    ,
      name: 'when', location: 'lib/when', main: 'when'
    ,
      name: 'meld', location: 'lib/meld', main: 'meld'
    ,
      name: 'poly', location: 'lib/poly'
    ]
    # Polyfill everything ES5-ish    
    preloads: ['poly/all']
    # Or, select individual polyfills if you prefer
    #preloads: ['poly/array', 'poly/function', 'poly/json', 'poly/object', 'poly/string', 'poly/xhr']
    curl(config, ['wire!app/main']);
    
