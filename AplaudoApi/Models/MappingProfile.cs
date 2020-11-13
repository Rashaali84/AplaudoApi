
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplaudoApi.Models
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {

           //step1 : install automapper versoin 6.1.1 --> step 2 : mapping dtos configuration 
           CreateMap<Concert, ConcertDTO>();
        }
    }
}