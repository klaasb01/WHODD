using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class UnitMap : ClassMap<Unit> {
        
        public UnitMap() {
			Table("UNIT");
			LazyLoad();
			Id(x => x.UnitId).GeneratedBy.Assigned().Column("Unit_Id");
			Map(x => x.Text).Column("Text");
        }
    }
}
