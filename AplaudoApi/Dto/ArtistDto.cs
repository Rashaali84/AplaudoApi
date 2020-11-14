using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplaudoApi.Dto
{
    public class ArtistDto
    {
        public long ArtistId { get; set; }
        public string ArtistFirstName { get; set; }
        public string ArtistLastName { get; set; }
        public string ArtistNickName { get; set; }
        public string EmailAddress { get; set; }
        public string Password { get; set; }
        public string PhotoLink { get; set; }
    }
}