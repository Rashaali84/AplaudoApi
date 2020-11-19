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
        public string Bio { get; set; }
        public string VCode { get; set; }
        //[Required(ErrorMessage ="Please Enter Email Address")]
        [DataType(DataType.EmailAddress)]
        public string EmailAddress { get; set; }
        public string Password { get; set; }
        public string PhotoLink { get; set; }
        public string Spotify { get; set; }
        public string YouTube { get; set; }
        public string iTunes { get; set; }
        public string SoundCloud { get; set; }
        public string WebSite { get; set; }
        public string LinkedIn { get; set; }
        public string CountryName { get; set; }
        public IList<InstrumentDto> InstrumentNames { get; set; }
        public IList<StyleDto> StyleNames { get; set; }
    }
}