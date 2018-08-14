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
        public bool toBatch { get; set; }
        public bool isDanger { get; set; }

    }

    public class FeedBackFormsmetaData
    {
        public int FeedbackID { get; set; }
        [MinLength(15, ErrorMessage = "Your comment was too short. Please enter a comment of at least 15 characters, but less than 150 characters.")]
        [MaxLength(150, ErrorMessage = "Your comment was too long. Please enter a comment of at least 15 characters, but less than 150 characters.")]
        [DataType(DataType.MultilineText)]
        [Required]
        [DisplayName("Why weren't you happy?")]
        public string FeedbackDescription { get; set; }
        [Required]
        [DisplayName("Date of Ride")]
        [DisplayFormat(DataFormatString = "{0:dd MMM yyyy}")]
        public Nullable<System.DateTime> DateofRide { get; set; }
        //[Required]
        [DisplayName("Time of Ride")]
        public Nullable<System.TimeSpan> TimeofRide { get; set; }
        [MaxLength(15, ErrorMessage = "Please enter a route name or number such as HealthLine, 1, 8, 26, Blue Line etc.")]
        [Required]
        [DisplayName("Route Name/Number")]
        public string RouteName { get; set; }
        [DisplayName("Vehicle Number")]
        [MaxLength(4, ErrorMessage = "Please enter the four-digit bus or train number.")]
        public string VehNum { get; set; }
        public Nullable<int> CustomerID { get; set; }
        public Nullable<int> BatchID { get; set; }
        public virtual Batch Batch { get; set; }
        public virtual Customers Customers { get; set; }
    }
}
