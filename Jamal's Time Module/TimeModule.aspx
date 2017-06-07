<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeModule.aspx.cs" Inherits="SHA_Chapter_2.Greetings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Timzeone - Scottjd</title>
    <link rel="stylesheet" runat="server" href="~/Extras/Extras.css" />
</head>
<body>
    <form id="TimeZones" runat="server">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="tmrUpdate" runat="server" Interval="1000" 
            ontick="tmrUpdate_Tick">
        </asp:Timer>
       <div class ="mainBG"></div>
     <div class ="mainSection">
        <h1>Jamal's Time-Zone Module</h1>
        <table class ="position">
            <tr>
              <th >Time Zone</th>
              <th>Time</th>
            </tr>
            <tr class ="hover">
              <td><a href="https://www.timeanddate.com/time/zones/est" target="_blank" style="text-decoration:none; color:white">Eastern Standard Time</a></td>
              <td><a href="https://www.timeanddate.com/time/zones/est" target="_blank" style="text-decoration:none; color:white""></a>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="tmrUpdate" EventName="Tick" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:Label ID="lblEST" runat="server" Text=""></asp:Label>&nbsp;&nbsp;<asp:Image runat ="server" id = "getIcon1" />
                    </ContentTemplate>
                </asp:UpdatePanel></td>
            </tr>
             <tr class ="hover">
              <td><a href="https://www.timeanddate.com/time/zones/pst" target="_blank" style="text-decoration:none; color:white">Pacific Standard Time</a></td>
              <td><a href="https://www.timeanddate.com/time/zones/pst" target="_blank" style="text-decoration:none; color:white"></a>
                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="tmrUpdate" EventName="Tick" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:Label ID="lblPST" runat="server" Text=""></asp:Label>&nbsp;&nbsp;<asp:Image runat ="server" id = "getIcon2" />
                    </ContentTemplate>
                  </asp:UpdatePanel></td>
            </tr>
            <tr class ="hover">
              <td><a href="https://www.timeanddate.com/worldclock/usa/honolulu" target="_blank" style="text-decoration:none; color:white">Hawaiian Standard Time</a></td>
              <td><a href="https://www.timeanddate.com/worldclock/usa/honolulu" target="_blank" style="text-decoration:none; color:white"></a>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="tmrUpdate" EventName="Tick" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:Label ID="lblHST" runat="server" Text=""></asp:Label>&nbsp;&nbsp;<asp:Image runat ="server" id = "getIcon3" />
                    </ContentTemplate>
                 </asp:UpdatePanel></td>
            </tr>
        </table>
        <table class = "imageT">
	    <tr>
		    <td><a href = "https://www.timeanddate.com/worldclock/" target="_blank"><img class = "icon" src = "../Images/Icons/clock.png"/><br /></a>View Other Times!</td>
		    <td><a href = "https://github.com/jamal-d-scott" target="_blank"><img class = "icon" src = "../Images/Icons/computer.png"/><br /></a>Jamal's GitHub</td>
		    <td><a href = "https://linkedin.com/in/jamaldscott/" target="_blank"><img class = "icon" src = "../Images/Icons/tie.png"/><br /></a>Jamal's LinkedIn</td>
		    <td><a href = "https://www.asp.net/" target="_blank"><img class = "icon" src = "../Images/Icons/web.png"/><br /></a>Learn More on ASP</td>
	    </tr>
	    </table>
    </div>
       <footer class ="footerText">
          <p>Jamal D. Scott --jamaldscott@gmail.com-- ASP.NET</p>
        </footer>
    </form>
</body>
</html>
