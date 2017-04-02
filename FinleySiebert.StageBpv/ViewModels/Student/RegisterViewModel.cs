using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FinleySiebert.StageBpv.ViewModels.Student
{
    public class UserRegisterViewModel
    {
        [Required, MaxLength(100), RegularExpression("^[a-zA-Z0-9]*$", ErrorMessage = "Je naam mag geen unieke karakters bevatten")]
        public string FirstName { get; set; }

        [Required, MaxLength(100)]
        public string LastName { get; set; }

        [Required, Range(0, int.MaxValue, ErrorMessage = "Het leerlingnummer is geen geldig cijfer.")]
        public int StudentNumber { get; set; }

        [Required, EmailAddress]
        public string Email { get; set; }

        [Required, DataType(DataType.Password)]
        public string Password { get; set; }

        [Required, DataType(DataType.Password), Compare(nameof(Password), ErrorMessage = "Wachtwoorden komen niet overheen")]
        public string ConfirmPassword { get; set; }
    }
}
