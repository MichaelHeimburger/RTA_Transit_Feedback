using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RTA_Transit_Feedback
{
    [MetadataType(typeof(statemetaData))]

    public partial class state
    {

    }



    public class statemetaData
    {
        [Required]
        [DisplayName("State")]
        public int stateID { get; set; }
        [DisplayName("State")]
        public string stateCode { get; set; }
        [DisplayName("State")]
        public string stateName { get; set; }
    }
}