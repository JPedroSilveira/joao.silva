function formatarData(data){
    /*
    let pattern = /((\d{2})\/(\d{2})\/(\d{4}))|((\d{2})\.(\d{2}+1)\.(\d{4}))|((\d{2})\\(\d{2})\\(\d{4}))|((\d{2})\-(\d{2})\-(\d{4}))/;
    let replace = '$1.$2.$3';
    let resultado = data.replace(/((\d{2})\/(\d{2})\/(\d{4}))|((\d{2})\.(\d{2}+1)\.(\d{4}))|((\d{2})\\(\d{2})\\(\d{4}))|((\d{2})\-(\d{2})\-(\d{4}))/,replace);
    console.log(resultado);
    return new Date(resultado);
    */
    
    if(data.indexOf('/')>-1){
        var parts = data.split('/');
        return new Date(parts[0],parts[1]-1,parts[2]);
    }else if(data.indexOf('-')>-1){
        return data;
    }else if(data.indexOf('.')>-1){
        return new Date(data);
    }else{
        return null;
    }    
    
}