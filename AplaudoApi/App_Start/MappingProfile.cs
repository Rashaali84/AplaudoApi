
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AplaudoApi.Models;
using AplaudoApi.Dto;
namespace AplaudoApi
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {

           //step1 : install automapper versoin 4.1.1 --> step 2 : mapping dtos configuration
           //source and target DTO in two ways // DTO for hiding implementaion details of db models
           //based on names
           //load this when app start in global.ascx
            Mapper.CreateMap<Concert, ConcertDto>();
            Mapper.CreateMap<ConcertDto,Concert>();
        }
    }
}