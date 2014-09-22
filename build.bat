call uglifyjs avalon.js -d LEGACY=true,ES5=false,ES6=false,SVG=true,VML=true,AMD=true,DEBUG=true -c -o avalon.legacy.js -m
call uglifyjs avalon.js -d LEGACY=false,ES5=true,ES6=false,SVG=true,VML=true,AMD=true,DEBUG=true -c -o avalon.es5.js --screw-ie8
call uglifyjs avalon.js -d LEGACY=false,ES5=false,ES6=true,SVG=true,VML=false,AMD=true,DEBUG=true -c -o avalon.es6.js --screw-ie8