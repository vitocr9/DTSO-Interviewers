using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DTSOInterviewers.Startup))]
namespace DTSOInterviewers
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
