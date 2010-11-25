package siscofe

import java.util.*

class PersonaService {

    static transactional = true

    def listadeTipoDeSangre(def params){
        def personas
        if(params?.filtro){
            personas = Persona.findAllByTipoDeSangre(params.filtro)
        }
        return [listas:personas]
    }

    def buscaDireccion(params){
        def personas
        if(params?.filtro){
            log.debug "nombre completo ################## $params.filtro"
            personas = Persona.findByNombreCompleto(params.filtro)
            log.debug "nombre completo ################## $personas"
        }
        return [listas:personas]
    }

    /**
     *Regresa una lista de Miembros, filtradas por su Nombre, ApellidoPaterno y ApellidoMaterno
     **/
    def searchMiembroByName(params){
        log.debug "params: $params"

        def miembros = search(params, true)
        log.debug "**************************"
        log.debug "miembros $miembros"

        log.debug "personas_size: $miembros.size"

        return miembros
    }

    /**
     *Regresa una lista de Personas, filtradas por su Nombre, ApellidoPaterno y ApellidoMaterno
     **/
    def searchPersonaByName(params){
        log.debug "params: $params"

        def personas = search(params, false)

        log.debug "**************************"
        log.debug "personas $personas"

        return personas
    }

    /**
     *Busca Personas o Miembros por su Nombre, ApellidoPaterno y ApellidoMaterno
     *Si es Persona --> esMiembro=false
     *Si es Miembro --> esMiembro=true
    **/
    def search(params, Boolean esMiembro){
        log.debug "esMiembro: $esMiembro"
        //BUSQUEDA DE PERSONAS
        def criteria = Persona.createCriteria()

        def personas = criteria.list{
            and{
                if(params != null){
                    if(params.filtroNombre != null && !params.filtroNombre.equals("")){
                        like("nombre", "%" + params.filtroNombre + "%")
                    }
                    if(params.filtroApellidoPaterno != null && !params.filtroApellidoPaterno.equals("")){
                        like("apellidoPaterno", params.filtroApellidoPaterno + "%")
                    }
                    if(params.filtroApellidoMaterno != null && !params.filtroApellidoMaterno.equals("")){
                        like("apellidoMaterno", params.filtroApellidoMaterno + "%")
                    }
                }
                eq("esMiembro", esMiembro)
            }
            order("apellidoPaterno")
        }
    }

    /*
     * Devuelve un VO (Hoja) que contiene todos los datos relacionados con el Miembro, que se mostraran en la Hoja del Miembro
     * Lo que devuelve es:
     * -Persona
     * -Ultimo Ingreso de la Persona
     */
    def hojaMiembro(params){
        log.debug "Entro a hojaMiembro en PersonaService"
        log.debug "params: $params"

        def persona = Persona.get(params.id)
        log.debug "persona: $persona"

        HojaVO hoja = new HojaVO()
                
        //Agregando Persona al VO
        hoja.setPersona(persona)

        //Logica para traer el ultimo ingreso de la persona
        def ultimoIngreso = TipoDeIngreso.executeQuery("select ti from TipoDeIngreso ti where ti.persona=:p order by fecha_alta desc",[p:persona],[max:1])
        log.debug "ultimoIngreso: $ultimoIngreso"
        log.debug "ultimoIngreso_size: $ultimoIngreso.size"

        //Agregando Ultimo Ingreso al VO
        hoja.setTipoIngreso(ultimoIngreso.get(0))//Obteniendo el unico valor de la lista devuelta por el query
        log.debug "hoja: $hoja"

        return hoja
    }

    def searchByEdad(params){
        log.debug "#################### params: $params"

        def personas = convierteEdad(params)

        
        log.debug "########################### personas $personas"

        return personas

    }
    def buscaEdad(Date eMinima, Date eMaxima){

    	def cri = Persona.createCriteria();
        log.debug "eMinima+++++++++++++ $eMinima";
        log.debug "eMaxima+++++++++++++ $eMaxima";

    	def persona = cri.list{

            and {
                    if(eMinima != null && eMaxima != null){
                    le("fechaNacimiento", eMinima)
                    ge("fechaNacimiento", eMaxima)
                }
            }
            order("fechaNacimiento")
        }

        log.debug "+++++++++++++ $persona.size";
        log.debug "+++++++++++++ $persona"

        return persona

    }

    def convierteEdad(params){

    	Date eMinima = null;
    	Date eMaxima = null;

    	if(params.filtroEdadInicio != null && !params.filtroEdadInicio.equals("")){
    		eMinima = new Date();
    		log.debug "fecha Actual: $eMinima"
    		Calendar calendar = Calendar.getInstance()
    		calendar.setTime(eMinima)

    		calendar.add(Calendar.YEAR, (Integer.valueOf(params.filtroEdadInicio))*-1)//modificando el año del Calendar-->Año actual - edadMaxima

    		eMinima = calendar.getTime();

			log.debug "fecha Modificada: $eMinima"

    	}
    	if(params.filtroEdadFin != null && !params.filtroEdadFin.equals("")){
    		eMaxima = new Date();
			log.debug "fecha Actual: $eMaxima"
    		Calendar calendar = Calendar.getInstance()
    		calendar.setTime(eMaxima)

    		calendar.add(Calendar.YEAR, (Integer.valueOf(params.filtroEdadFin))*-1)//modificando el año del Calendar-->Año actual - edadMaxima

    		eMaxima = calendar.getTime();

			log.debug "fecha Modificada: $eMaxima"
    	}

    	log.debug "eMaxima: $eMaxima < fecha de nacimiento < eMinima: $eMinima"

        def persona = buscaEdad(eMinima, eMaxima)
    	
        log.debug "Convierte edad lo que devuelve despues de pasar por BD :::::::::::::: $persona"

    	return persona
    }

    /*
     * Regresa una lista de las Personas que ingresaron al sistema, filtradas por todo o algunos de los siguientes parametros:
     * -Iglesia
     * -Mes
     * -Anio
     */

    def buscarIngresos(params) {
        log.debug "params: $params"
        
        //BUSQUEDA DE TODOS LOS MIEMBROS
        def miembros = search(null,true)
        log.debug "allMiembros: $miembros"

        //FILTRADO DE LOS MIEMBROS POR SU IGLESIA
        def hojasFiltradasByIdAndIglesia = []

        miembros.each(){
            log.debug "dentro del each: ***********************************************************************************************"
            log.debug "it: $it"
            HojaVO hoja = hojaMiembroByIdAndIglesia(it.id, params.tipo_iglesia)
            if(hoja != null){
               hojasFiltradasByIdAndIglesia.add(hoja)
            }
            
        }

        log.debug "hojas filtrados por iglesia (si habia): $hojasFiltradasByIdAndIglesia"
        log.debug "size: $hojasFiltradasByIdAndIglesia.size"

        //FILTRADO POR TIPO DE INGRESO -- AQUI SE PIERDE!!!
        def hojasFiltradasByTipoIngreso = []

        hojasFiltradasByIdAndIglesia.each(){
            if(params.tipo_ingreso != null && !params.tipo_ingreso.equals("")){
//                log.debug "it --> $it"
                if(params.tipo_ingreso.equals("BAUTISMO")){
                    log.debug "it == bautismo? ${it.tipoIngreso instanceof Bautismo}"
                    if(it.tipoIngreso instanceof Bautismo){
                        hojasFiltradasByTipoIngreso.add(it)
//                        log.debug "agrego Bautismo"
                    }
                }
                if(params.tipo_ingreso.equals("CARTA DE TRASLADO")){
                    log.debug "it == carta de traslado? ${it instanceof CartaDeTraslado}"
                    if(it.tipoIngreso instanceof CartaDeTraslado){
                        hojasFiltradasByTipoIngreso.add(it)
//                        log.debug "agrego CartaDeTraslado"
                    }
                }
                if(params.tipo_ingreso.equals("PROFESION DE FE")){
                    log.debug "it == profesion de fe? ${it instanceof ProfesionDeFe}"
                    if(it.tipoIngreso instanceof ProfesionDeFe){
                        hojasFiltradasByTipoIngreso.add(it)
//                        log.debug "agrego ProfesionDeFe"
                    }
                }
            }
        }

        log.debug "hojas filtradas por tipo de ingreso (si habia): $hojasFiltradasByTipoIngreso"
        log.debug "hsize: $hojasFiltradasByTipoIngreso.size"

        //FILTRADO POR MES Y AÑO
        def hojasFiltradasByMesAndAnio = []
        Calendar calendar = Calendar.getInstance()
        log.debug "anio_ingreso $params.anio_ingreso"
        if(params.mes_ingreso != null && params.mes_ingreso.equals("TODOS")){ //SI NO HAY FILTRO POR MES
            log.debug "filtro sin mes"
             hojasFiltradasByTipoIngreso.each(){
                log.debug "fecha: $it.tipoIngreso.fechaAlta"
                calendar.setTime(it.tipoIngreso.fechaAlta)
                log.debug "calendar.YEAR: ${calendar.get(Calendar.YEAR)}"
                if(calendar.get(Calendar.YEAR) == params.anio_ingreso.toLong()){
                    hojasFiltradasByMesAndAnio.add(it)
                }
            }
        }
        else{ //SI HAY FILTRO POR MES
            log.debug "filtro con mes"
            hojasFiltradasByTipoIngreso.each(){
                log.debug "fecha: $it.tipoIngreso.fechaAlta"
                calendar.setTime(it.tipoIngreso.fechaAlta)
                log.debug "mes: $calendar.MONTH"
                if(celendar.get(Calendar.MONTH) == mesEnteroFromString(params.mes_ingreso) && calendar.get(Calendar.YEAR) == params.anio_ingreso.toLong()){
                    hojasFiltradasByMesAndAnio.add(it)
                }
            }
        }
 
        log.debug "hojas filtradas por mes y anio: $hojasFiltradasByMesAndAnio"
        log.debug "hsize: $hojasFiltradasByMesAndAnio.size"

        return hojasFiltradasByMesAndAnio
    }

    /*
     *Recibe como parametro un mes en letra (ENERO, FEBRERO...) y devuelve el equivalente en entero de un Calendar
     */
    def mesEnteroFromString(String mes){
        def mesEntero

        if(mes.equals("ENERO")){
            mesEntero = 0
        }
        else if(mes.equals("FEBRERO")){
            mesEntero = 1
        }
        else if(mes.equals("MARZO")){
            mesEntero = 2
        }
        else if(mes.equals("ABRIL")){
            mesEntero = 3
        }
        else if(mes.equals("MAYO")){
            mesEntero = 4
        }
        else if(mes.equals("JUNIO")){
            mesEntero = 5
        }
        else if(mes.equals("JULIO")){
            mesEntero = 6
        }
        else if(mes.equals("AGOSTO")){
            mesEntero = 7
        }
        else if(mes.equals("SEPTIEMBRE")){
            mesEntero = 8
        }
        else if(mes.equals("OCTUBRE")){
            mesEntero = 9
        }
        else if(mes.equals("NOVIEMBRE")){
            mesEntero = 10
        }
        else if(mes.equals("DICIEMBRE")){
            mesEntero = 11
        }

        return mesEntero
    }

     /*
     * Devuelve un VO (Hoja) que contiene todos los datos relacionados con el Miembro, que se mostraran en la Hoja del Miembro, segun el id
     * del parametro
     * Lo que devuelve es:
     * -Persona
     * -Ultimo Ingreso de la Persona
     */
    def hojaMiembroByIdAndIglesia(Long idPersona, String idIglesia){
        log.debug "Entro a hojaMiembroById en PersonaService"
        log.debug "idPersona: $idPersona ,idIglesia: $idIglesia"

        def persona = Persona.get(idPersona)
        log.debug "persona: $persona"

        def iglesia

        if(idIglesia != null && !idIglesia.equals("")){
            iglesia = Iglesia.get(idIglesia.toLong())
        }

        def ultimoIngreso

        //Logica para traer el ultimo ingreso de la persona
        if(iglesia != null){
            ultimoIngreso = TipoDeIngreso.executeQuery("select ti from TipoDeIngreso ti where ti.persona=:p and ti.iglesia=:i order by fecha_alta desc",[p:persona, i:iglesia],[max:1])
        }
        else{
            ultimoIngreso = TipoDeIngreso.executeQuery("select ti from TipoDeIngreso ti where ti.persona=:p order by fecha_alta desc",[p:persona],[max:1])
        }
        
        log.debug "ultimoIngreso: $ultimoIngreso"
        log.debug "ultimoIngreso_size: $ultimoIngreso.size"

        HojaVO hoja

        if(ultimoIngreso != null && ultimoIngreso.size != 0){
            hoja = new HojaVO()
            //Agregando Persona al VO
            hoja.setPersona(persona)

            //Agregando Ultimo Ingreso al VO
            hoja.setTipoIngreso(ultimoIngreso.get(0))//Obteniendo el unico valor de la lista devuelta por el query
            log.debug "hoja: $hoja"
        }

        return hoja
    }

    def serviceMethod() {

    }
}
