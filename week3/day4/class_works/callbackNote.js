function thisIsACallback(){
  console.log('hi')
}

function highOrderFunction(callback){

  callback();
}

highOrderFunction(thisIsACallback);
