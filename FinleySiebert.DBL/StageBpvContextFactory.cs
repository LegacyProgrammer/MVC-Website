using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FinleySiebert.DBL
{
    class StageBpvContextFactory : IDbContextFactory<StageBpvContext>
    {
        public StageBpvContext Create()
        {
            return new StageBpvContext("Server=ipv4.tryan.nl;Database=GroepG;User Id=GroepG;Password=GroepG.01;");
        }
    }
}
