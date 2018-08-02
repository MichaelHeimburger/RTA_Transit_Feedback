using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RTA_Transit_Feedback
{
    [MetadataType(typeof(FeedBackFormsmetaData))]//must match view folder, to update to page

    public partial class FeedBackForm
    {

    }

    public class FeedBackFormsmetaData
    {
        public int FeedbackID { get; set; }
        [DisplayName("Feedback Description")]
        public string FeedbackDescription { get; set; }
        [DisplayName("Date of Ride")]
        public Nullable<System.DateTime> DateofRide { get; set; }
        [DisplayName("Time of Ride")]
        public Nullable<System.TimeSpan> TimeofRide { get; set; }
        [DisplayName("Route Name")]
        public string RouteName { get; set; }
        [DisplayName("Vehicle Number")]
        public string VehNum { get; set; }
        public Nullable<int> CustomerID { get; set; }
        public Nullable<int> BatchID { get; set; }

        public virtual Batch Batch { get; set; }
        public virtual Customers Customers { get; set; }
    }
}
