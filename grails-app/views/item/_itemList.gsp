<g:if test="${error == false}">
    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Price</th>
            <th>Currency</th>
        </tr>
        <g:each in="${list}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.title}</td>
                <td class="price_row">${item.price}</td>
                <td>${item.currency_id}</td>
            </tr>
        </g:each>
    </table>
</g:if>
<g:else>
    Se ha producido un error.
</g:else>