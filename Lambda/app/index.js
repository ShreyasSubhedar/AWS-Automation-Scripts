exports.handler = function(event,context,callback){
    console.log('Lambda Function successfully created using aws cli');
    callback(null,"success");
}
