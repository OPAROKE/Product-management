<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OmrokNavigator.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Omrok Navigator</title>
    <link rel="icon" href="/omroklogo.ico" type="image/x-icon" />
    <link rel="icon" href="/omroklogo.ico" type="image/ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script src="http://www.java.com/js/deployJava.js"></script>
            <script>
                var attributes = { width: 675, height: 300 };
                var parameters = { jnlp_href: 'applet/ma-applet.jnlp' };
                deployJava.runApplet(attributes, parameters, '1.6');
            </script>
        </div>
    </form>
</body>
</html>
