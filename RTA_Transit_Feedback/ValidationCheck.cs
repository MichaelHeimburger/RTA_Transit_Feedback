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
            bool value = false;
            var customersdb = db.Customers;
            foreach(Customers c in db.Customers)
            {
                if(c.Id == currentId)
                {
                    value = true;
                }
            }

            return value;
        }
    }
}