using System;
using System.Collections.Generic;
using System.Threading.Tasks;

using HackerNewsReader.Models;
using HackerNewsReader.Utility;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace HackerNewsReader.Tests.Utility
{
    [TestClass]
    public class APIInteractionTest
    {
        [TestMethod]
        public async Task GetBestStoriesTest()
        {
            var result = await APIInteraction.GetBestStories();

            Assert.IsNotNull(result);
        }

        [TestMethod]
        public async Task GetStoryTest()
        {
            List<Story> stories = new List<Story>();
            List<Task<Story>> allStoryTasks = new List<Task<Story>>();
            Task<List<int>> bestStories = Task.Run(async () => await APIInteraction.GetBestStories());

            var storiesList = bestStories.Result;
            allStoryTasks.Add(Task.Run(async () => await APIInteraction.GetStory(storiesList[0])));

            var continuation = Task.WhenAll(allStoryTasks);

            for (int i = 0; i <= continuation.Result.Length - 1; i++)
            {
                stories.Add(continuation.Result[i]);
            }

            Assert.IsNotNull(stories);
        }
    }
}
