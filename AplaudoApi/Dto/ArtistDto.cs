using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AplaudoApi.Dto
{
    public class ArtistDto
    {
        //Data Annotaions for data member for validation 
        public long ArtistId { get; set; }
        //[StringLength(255)]
        public string ArtistFirstName { get; set; }
        public string ArtistLastName { get; set; }
        public string ArtistNickName { get; set; }
        //[Required(ErrorMessage ="Please Enter Email Address")]
        [DataType(DataType.EmailAddress)]
        public string EmailAddress { get; set; }
        public string Password { get; set; }
        public string PhotoLink { get; set; }
    }
}