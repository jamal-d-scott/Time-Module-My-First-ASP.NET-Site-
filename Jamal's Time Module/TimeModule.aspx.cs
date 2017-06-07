using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHA_Chapter_2
{
    public partial class Greetings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void tmrUpdate_Tick(object sender, EventArgs e)
        {
            DateTime currentTime = DateTime.Now;
            TimeZoneInfo est = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");
            TimeZoneInfo pst = TimeZoneInfo.FindSystemTimeZoneById("Pacific Standard Time");
            TimeZoneInfo hst = TimeZoneInfo.FindSystemTimeZoneById("Hawaiian Standard Time");
            DateTime targetTime = TimeZoneInfo.ConvertTime(currentTime, est);

            targetTime = TimeZoneInfo.ConvertTime(currentTime, est);
            lblEST.Text = targetTime.ToString("hh:mm:ss tt") + "  : EST";
            if (lblEST.Text.Contains("PM"))
                getIcon1.ImageUrl = "../Images/Icons/night.png";
            else
                getIcon1.ImageUrl = "../Images/Icons/day.png";
            getIcon1.Attributes["style"] = "height: 35px; width:35px";

            targetTime = TimeZoneInfo.ConvertTime(currentTime, pst);
            lblPST.Text = targetTime.ToString("hh:mm:ss tt") + "  : PST";
            if (lblPST.Text.Contains("PM"))
                getIcon2.ImageUrl = "../Images/Icons/night.png";
            else
                getIcon2.ImageUrl = "../Images/Icons/day.png";
            getIcon2.Attributes["style"] = "height: 35px; width:35px";

            targetTime = TimeZoneInfo.ConvertTime(currentTime, hst);
            lblHST.Text = targetTime.ToString("hh:mm:ss tt") + "  : HST";
            if (lblHST.Text.Contains("PM"))
                getIcon3.ImageUrl = "../Images/Icons/night.png";
            else
                getIcon3.ImageUrl = "../Images/Icons/day.png";
            getIcon3.Attributes["style"] = "height: 35px; width:35px";
        }
    }   
}