using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FinleySiebert.StageBpv.ViewModels.Student
{
    public class LoginViewModel
    {
        [Required, Range(0, int.MaxValue, ErrorMessage = "Het leerlingnummer is geen geldig cijfer.")]
        public int StudentNumber { get; set; }

        [Required, DataType(DataType.Password)]
        public string Password { get; set; }

    }
}
