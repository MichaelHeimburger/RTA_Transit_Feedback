using System.Web;
using System.Web.Mvc;

namespace RTA_Transit_Feedback
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
