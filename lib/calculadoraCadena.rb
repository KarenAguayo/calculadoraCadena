def calcularCadena(numCa)
    if(numCa.split(/\n/)[0].include?"//")
        delimitadores =((numCa.split(/\n/)[0].gsub"/","").gsub"[","").gsub"]",""
        arraynums=numCa.split(/\n/)[1].split(Regexp.union(delimitadores.split("")))
    else
        arraynums=numCa.split(/[,\s]/)
    end
    arraynumsInt=arraynums.map{|i| i.to_i if i.to_i<1001}.compact
    suma =arraynumsInt.sum()
    return suma
end