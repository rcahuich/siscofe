<div class="dialog">
    <table>
        <tbody>
            <tr class="prop">
               <td valign="top" class="name"><label for="nombre">Nombre:</label></td>
               <td valign="top" class="value ${hasErrors(bean:iglesiaInstance,field:'nombre','errors')}">
                   <input type="text" id="name" name="nombre" value="${fieldValue(bean:iglesiaInstance,field:'nombre')}"/>
               </td>
            </tr>
            <tr class="prop">
                <td valign="top" class="name"><label for="direcciones">Direcciones:</label></td>
                <td valign="top" class="value ${hasErrors(bean:iglesiaInstance,field:'direcciones','errors')}">
                    <g:render template="direcciones" model="['iglesiaInstance':iglesiaInstance]" />
                </td>
            </tr>
        </tbody>
    </table>
</div>