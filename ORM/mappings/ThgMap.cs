using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class ThgMap : ClassMap<Thg> {
        
        public ThgMap() {
			Table("ThG");
			LazyLoad();
			Id(x => x.TherapgroupId).GeneratedBy.Assigned().Column("Therapgroup_Id");
			References(x => x.Atc).Column("ATCCode");
			References(x => x.Mp).Column("Medicinalprod_Id");
			Map(x => x.Createdate).Column("CreateDate");
			Map(x => x.Officialatccode).Column("OfficialATCCode");
        }
    }
}
