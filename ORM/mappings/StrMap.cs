using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class StrMap : ClassMap<Str> {
        
        public StrMap() {
			Table("STR");
			LazyLoad();
			Id(x => x.StrengthId).GeneratedBy.Assigned().Column("Strength_Id");
			Map(x => x.Text).Column("Text");
        }
    }
}
