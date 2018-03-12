using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using HackerNewsReader.Models;

namespace HackerNewsReader.Utility
{
    /*
     * Static class to interact with Hacker News APIs
     */ 
    public static class APIInteraction
    {
        /*
         * Get List of best story IDs from Hacker News web api 
         */
        public static async Task<List<int>> GetBestStories()
        {
            try
            {
                using (var client = new HttpClient())
                {
                    using (var r = await client.GetAsync(new Uri("https://hacker-news.firebaseio.com/v0/beststories.json?print=pretty")))
                    {
                        return r.Content.ReadAsAsync<List<int>>().Result;
                    }
                }
            }
            catch
            {
                //Handle error with custom error handling
                return null;
            }
        }

        /*
         * Get actual story JSON object by ID from Hacker News
         */
        public static async Task<Story> GetStory(int storyId)
        {
            try
            {
                using (var client = new HttpClient())
                {
                    using (var r = await client.GetAsync(new Uri("https://hacker-news.firebaseio.com/v0/item/" + storyId + ".json?print=pretty")))
                    {
                        return r.Content.ReadAsAsync<Story>().Result;
                    }
                }
            }
            catch
            {
                //Handle error with custom error handling
                return null;
            }
        }

        /*
         * Get list of best story IDs
         * Loops through that list and build list of stories
         */
        public static List<Story> GetStoryList()
        {
            List<Story> stories = new List<Story>();

            try
            {
                List<Task<Story>> allStoryTasks = new List<Task<Story>>();

                Task<List<int>> bestStories = Task.Run(async () => await GetBestStories());

                var storiesList = bestStories.Result;

                foreach (int storyId in storiesList)
                {
                    allStoryTasks.Add(Task.Run(async () => await GetStory(storyId)));
                }

                var continuation = Task.WhenAll(allStoryTasks);

                for (int i = 0; i <= continuation.Result.Length - 1; i++)
                {
                    stories.Add(continuation.Result[i]);
                }
            }
            catch
            {
                //Handle error with custom error handling
            }

            return stories;
        }
    }
}