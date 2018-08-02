using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RTA_Transit_Feedback
{
    [MetadataType(typeof(CustomersmetaData))]

    public partial class Customers
    {

    }



    public class CustomersmetaData
    {
        public int CustomerID { get; set; }
        [DisplayName("First Name")]
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string AddressL1 { get; set; }
        public string AddressL2 { get; set; }
        public string City { get; set; }
        public Nullable<int> stateID { get; set; }
        public string PhoneNum { get; set; }
        public string Id { get; set; }
        public string Zip { get; set; }

    }
}