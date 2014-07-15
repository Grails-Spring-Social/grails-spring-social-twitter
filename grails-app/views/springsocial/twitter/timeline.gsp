<html>
<head>
    <title>Twitter TimeLine</title>
    <meta name='layout' content='bootstrap'/>
</head>

<body>


<div class="container">
  <div class="row">
    <div class="span9">
      <div class="form-container">
        <g:render template="/springsocial/twitter/twitterMenu" model="['active':'timeline']"/>

        <g:if test="${flash.message}">
            <h3>${flash.message}</h3>
        </g:if>
        <g:else>
            <h3>Your Twitter ${timelineName} Timeline</h3>
        </g:else>

        <h4>Post a tweet</h4>

        <g:form controller="springSocialTwitter" action="tweet" name="sendMessage">
            <g:textArea name="message" rows="2" cols="80" />
            <g:submitButton name="submit" value="Send Tweet" class="btn btn-primary"/>
        </g:form>


        <g:form controller="springSocialTwitter" action="search" name="search">
            <g:textField name="query"/><br/>
            <g:submitButton name="submit" value="Search" class="btn btn-default"/>
        </g:form>

    ${fun_id}
        <ul class="nav nav-pills">
            <li <g:if test="${active == 'home'}"></g:if>><g:link controller="springSocialTwitter" action="timeline" id="home">Home Timeline</g:link></li>
            <li <g:if test="${active == 'user'}"></g:if>><g:link controller="springSocialTwitter" action="timeline" id="user">User Timeline</g:link></li>
            <li <g:if test="${active == 'public'}"></g:if>><g:link controller="springSocialTwitter" action="timeline" id="public">Public Timeline</g:link></li>
            <li <g:if test="${active == 'mentions'}"></g:if>><g:link controller="springSocialTwitter" action="timeline" id="mentions">Mentions</g:link></li>
            <li <g:if test="${active == 'favorites'}"></g:if>><g:link controller="springSocialTwitter" action="timeline" id="favorites">Favorites</g:link></li>
        </ul>


        <ul class="list-unstyled">
          <g:each in="${friends}" var="friend">
            <li class="media">
              <a class="pull-left" href="#">
                <img src="http://graph.facebook.com/${friend.id}/picture" align="middle"/>
              </a>
              <div class="media-body">
                ${friend.name}
              </div>
            </li>
          </g:each>
        </ul>

        <div class="feed">
            <ul class="imagedList">
                <g:each in="${timeline}" var="tweet">
                    <li class="imagedItem">
                        <div class="image">
                            <g:if test="${tweet.profileImageUrl}">
                                <img src="${tweet.profileImageUrl}" align="left"/>
                            </g:if>
                        </div>

                        <div class="content">
                            <strong><a href="http://twitter.com/${tweet.fromUser}">${tweet.fromUser}</a></strong><br/>
                            ${tweet.text}<br/>
                            <span class="postTime">${tweet.createdAt}</span>
                        </div>
                    </li>
                </g:each>

            </ul>
        </div>

      </div>
    </div>
  </div>
</div>

</body>
</html>
