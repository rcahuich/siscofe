package siscofe

class Bautismo extends TipoDeIngreso{

    String lugarBautismo
    String ministroOficiante
    String codigo
    String cursoBiblico
    String numeroBautismo
    Date fechaBautismo
    Boolean estudioVeintiochoCreencias = true
       
    static constraints = {
        lugarBautismo maxSize:64, blank:false
        ministroOficiante maxSize:64, blank:false
        codigo maxSize:6, blank:false
        cursoBiblico maxSize:64, blank:false
        numeroBautismo maxSize:5, inList:['1','2','3']
    }
}