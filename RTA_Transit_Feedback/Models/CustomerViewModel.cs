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
        [Required]
        [DisplayName("First Name")]
        public string FirstName { get; set; }
        [Required]
        [DisplayName("Last Name")]
        public string LastName { get; set; }
        [Required]
        [DisplayName("Address Line 1")]
        public string AddressL1 { get; set; }
        [DisplayName("Address Line 2")]
        public string AddressL2 { get; set; }
        [Required]
        [DisplayName("City")]
        public string City { get; set; }
        [Required]
        [DisplayName("State")]
        public Nullable<int> stateID { get; set; }
        [Required]
        [DisplayName("Phone Number")]
        [MaxLength(10, ErrorMessage = "Please enter your phone number as a series of 10 digits without other characters.")]
        [MinLength(10, ErrorMessage = "That wasn't enough digits. Please enter your phone number as a series of 10 digits without other characters.")]
        public string PhoneNum { get; set; }
        public string Id { get; set; }
        [Required]
        [DisplayName("ZIP Code")]
        [MaxLength(5, ErrorMessage = "Please enter your five digit ZIP code.")]
        [MinLength(5, ErrorMessage = "That wasn't enough dights. Please enter your five digit ZIP code.")]
        public string Zip { get; set; }

    }
}