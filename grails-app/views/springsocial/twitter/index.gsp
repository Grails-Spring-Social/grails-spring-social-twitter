<html>
<head>
    <title>Twitter Profile</title>
    <meta name='layout' content='bootstrap'/>
</head>

<body>


<div class="container">
  <div class="row">
    <div class="span9">
      <div class="form-container">
        <g:render template="/springsocial/twitter/twitterMenu" model="['active':'index']"/>

        <h3>Your Twitter Profile</h3>

        <figure>
          <img src="${profile.profileImageUrl}"/>
          <figcaption>Hello, ${profile.name}</figcaption>
        </figure>

        <dl class="dl-horizontal">
            <dt>Twitter ID:</dt>
            <dd>${profile.id}</dd>
            <dt>Screen name:</dt>
            <dd><a href="${profile.profileUrl}" target="_blank">${profile.screenName}</a></dd>
            <dt>Description:</dt>
            <dd>${profile.description}</dd>
            <dt>Location:</dt>
            <dd>${profile.location}</dd>
            <dt>URL:</dt>
            <dd><a href="${profile.url}">${profile.url}</a></dd>
        </dl>

        <g:form method="DELETE" mapping="springSocialConnect" params="[providerId:'twitter']">
            <button class="btn btn-lg btn-danger" type="submit">Disconnect from Twitter</button>
        </g:form>

      </div>
    </div>
  </div>
</div>


</body>
</html>
