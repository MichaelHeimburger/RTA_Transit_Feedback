using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;

namespace RTA_Transit_Feedback
{
    public class ValidationCheck
    {
        private TransitFeedbackAppDBv1Entities db = new TransitFeedbackAppDBv1Entities();

        public bool HasCustomerInfo(string currentId)
        {
            var currentCustomerClass = (from z in db.Customers where z.Id == currentId select z).ToList()[0];

            return currentCustomerClass != null;
        }
    }
}