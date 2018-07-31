using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RTA_Transit_Feedback.Startup))]
namespace RTA_Transit_Feedback
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
