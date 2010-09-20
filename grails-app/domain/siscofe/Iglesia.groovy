package siscofe

import org.apache.commons.collections.list.LazyList;
import org.apache.commons.collections.FactoryUtils;

class Iglesia {
    String nombre
    List direcciones = new ArrayList()
    
    static hasMany = [direcciones:Direccion]

    static constraints = {
        nombre maxSize:64, blank:false
    }

    static mapping = {
        direcciones cascade:"all,delete-orphan"
        table 'iglesias'
        nombre index:'iglesia_nombre_idx'
    }

    def getExpandableDireccionList() {
        return LazyList.decorate(direcciones,FactoryUtils.instantiateFactory(Direccion.class))
    }

    String toString () {
        "$nombre"
    }
}
