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
        public string About { get; set; }
        public string Style { get; set; }
        public string Genere { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string ConcertLink { get; set; }
        public string PictureLink { get; set; }
        public IList<ProgrammaDto> ProgrammaLinks { get; set; }
        public IList<ArtistDto> ArtistEmails { get; set; }

    }
}