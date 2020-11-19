using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AplaudoApi.Models;
namespace AplaudoApi.Dto
{
    public class ConcertDto
    {

        public long ConcertId { get; set; }
        public string ConcertTitle { get; set; }
        public string About { get; set; }
        public string Style { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string ConcertLink { get; set; }
        public string PictureLink { get; set; }
        public string ProgrammaLink { get; set; }
        public string TeaserLink { get; set; }
        public string CountryName { get; set; }
        public string InstrumentationValue { get; set; }
        public IList<ArtistDto> ArtistEmails { get; set; }
        public IList<InstrumentDto> InstrumentNames {get; set;}

}
}