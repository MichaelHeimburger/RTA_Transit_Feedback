using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RTA_Transit_Feedback.Models
{
    public class FeedBackCreateViewModel
    {
        public Customers customers { get; set; }
        public FeedBackForm feedBackForm { get; set; }
        public string state { get; set; }
    }
}