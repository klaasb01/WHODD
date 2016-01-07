using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class PrgMap : ClassMap<Prg> {
        
        public PrgMap() {
			Table("PRG");
			LazyLoad();
			Id(x => x.ProductgroupId).GeneratedBy.Assigned().Column("Productgroup_Id");
			Map(x => x.Productgroupname).Column("ProductgroupName");
			Map(x => x.Daterecorded).Column("DateRecorded");
        }
    }
}
