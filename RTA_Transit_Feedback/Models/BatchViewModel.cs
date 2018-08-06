using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RTA_Transit_Feedback
{
    [MetadataType(typeof(BatchmetaData))]

    public partial class Batch
    {

    }



    public class BatchmetaData
    {
        public int BatchID { get; set; }
        [DisplayName("Tracking Number ")]
        public string TrackingNo { get; set; }
    }
}