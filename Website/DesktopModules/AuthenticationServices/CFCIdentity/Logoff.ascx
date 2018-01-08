<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="Logoff.ascx.cs" Inherits="CFCIdentity.Logoff" %>
<h1>Log out</h1>
<p>Logging you out, please wait&hellip;</p>
<div style="width:1px;height:1px;overflow:hidden;">
    <iframe id="logoutFrame"></iframe>
</div>

<script>
    document.getElementById('logoutFrame').addEventListener('load', function () {
        var redir = '/';
        location.href = redir;
    });
    document.getElementById('logoutFrame').src = 'https://login.cfchildren.org/connect/endsession?id_token_hint=<%= DotNetNuke.Services.Personalization.Personalization.GetProfile("CFCIdentity", "identityToken") %>';
</script>