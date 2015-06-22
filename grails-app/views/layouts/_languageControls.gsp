<%--
  Created by IntelliJ IDEA.
  User: nazgarcia
  Date: 18/6/15
  Time: 15:53
--%>
<g:if test="${session.language == 'en'}">
    <a href="/helloworld?lang=sp"><img src="${resource(dir: 'images', file: 'sp.png')}" alt="Spanish" title="Click to view in Spanish" /></a>
    <img src="${resource(dir: 'images', file: 'en.png')}" alt="English" title="Viewing in English" class="img_active" />
</g:if>
<g:else>
    <img src="${resource(dir: 'images', file: 'sp.png')}" alt="Spanish" title="Viewing in Spanish" class="img_active" />
    <a href="/helloworld?lang=en"><img src="${resource(dir: 'images', file: 'en.png')}" alt="English" title="Click to view in English" /></a>
</g:else>