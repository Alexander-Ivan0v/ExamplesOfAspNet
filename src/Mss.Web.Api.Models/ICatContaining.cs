using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public interface ICatContaining
    {
        List<Cat> GetCat();
        void SetCat(List<Cat> cat);
    }
}