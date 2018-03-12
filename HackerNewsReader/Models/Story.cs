using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HackerNewsReader.Models
{
    /*
     * Object model that represents needed fields that are returned from Hackers News sory API
     */
    public class Story
    {
        public string Title { get; set; }
        public string By { get; set; }
        public string URL { get; set; }
    }
}