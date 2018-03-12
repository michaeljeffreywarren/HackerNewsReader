using System;
using System.Collections.Generic;
using System.Runtime.Caching;
using System.Web.Mvc;
using HackerNewsReader.Utility;
using HackerNewsReader.Models;

namespace HackerNewsReader.Controllers
{
    public class HomeController : Controller
    {
        /*
            Entry method for index view.
            1. Build list of best stories
            2. Cache results
             
        */
        public ActionResult Index()
        {
            ObjectCache cache = MemoryCache.Default;
            List<Story> stories = cache["bestStories"] as List<Story>;

            if (stories == null)
            {
                CacheItemPolicy policy = new CacheItemPolicy
                {
                    AbsoluteExpiration = DateTimeOffset.Now.AddMinutes(10.0),
                };

                stories = APIInteraction.GetStoryList();
                cache.Set("bestStories", stories, policy);
            }

            return View(stories);
        }
    }
}