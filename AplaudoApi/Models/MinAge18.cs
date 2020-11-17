using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AplaudoApi.Models
{
    //Cucsotm validation that can used in data annotaion
    public class MinAge18: ValidationAttribute
    {
       /* protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        { 
            if (true)
                return ValidationResult.Success;
            else
            return new ValidationResult("error message");
        }*/
    }
}