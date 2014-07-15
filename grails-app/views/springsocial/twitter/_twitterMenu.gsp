<ul class="nav nav-pills">
    <li <g:if test="${active == 'index'}">class="active"</g:if>><g:link controller="springSocialTwitter">User Profile</g:link></li>
    <li <g:if test="${active == 'timeline'}">class="active"</g:if>><g:link controller="springSocialTwitter" action="timeline">Timeline</g:link></li>
    <li <g:if test="${active == 'profiles'}">class="active"</g:if>><g:link controller="springSocialTwitter" action="profiles" id="friends">Friends</g:link></li>
    <li <g:if test="${active == 'profiles'}">class="active"</g:if>><g:link controller="springSocialTwitter" action="profiles" id="followers">Followers</g:link></li>
    <li <g:if test="${active == 'messages'}">class="active"</g:if>><g:link controller="springSocialTwitter" action="messages">Messages</g:link></li>
    <li <g:if test="${active == 'trends'}">class="active"</g:if>><g:link controller="springSocialTwitter" action="trends">Current Trends</g:link></li>
</ul>
