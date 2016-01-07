using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class PpMap : ClassMap<Pp> {
        
        public PpMap() {
			Table("PP");
			LazyLoad();
			Id(x => x.PharmproductId).GeneratedBy.Assigned().Column("Pharmproduct_Id");
			References(x => x.Pf).Column("PharmaceuticalForm");
			References(x => x.Mp).Column("Medicinalprod_Id");
			Map(x => x.Routeofadministration).Column("RouteOfAdministration");
			Map(x => x.Numberofingredients).Column("NumberOfIngredients");
			Map(x => x.Createdate).Column("CreateDate");
        }
    }
}
