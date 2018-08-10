
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RTA_Transit_Feedback.Models
{
    public class FeedBackRelayViewModel
    {
        public List<FeedBackForm> Forms { get; set; }
        public bool BatchAll { get; set; }
        public bool HasDanger { get; set; }

    }
}