using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace AplaudoApi
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();
            // school route
            config.Routes.MapHttpRoute(
                name: "Login",
                routeTemplate: "api/artists/userlogin",
                defaults: new { controller = "artists" }
            );

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
