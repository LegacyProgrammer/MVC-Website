using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;

namespace FinleySiebert.StageBpv.ViewModels.Company
{
    public class LoginViewModel
    {
        [Required, EmailAddress, RegularExpression("@gmail|@outlook|@live|@hotmail", ErrorMessage = "Bedrijfsemail")]
        public int BedrijfsEmail { get; set; }

        [Required, DataType(DataType.Password)]
        public string Password { get; set; }
    }
}
