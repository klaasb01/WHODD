using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class UnitlMap : ClassMap<Unitl> {
        
        public UnitlMap() {
			Table("Unit-L");
			LazyLoad();
			Id(x => x.UnitId).GeneratedBy.Assigned().Column("Unit_Id");
			Map(x => x.Text).Column("Text");
        }
    }
}
