using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class SunMap : ClassMap<Sun> {
        
        public SunMap() {
			Table("SUN");
			LazyLoad();
			Id(x => x.SubstanceId).GeneratedBy.Assigned().Column("Substance_Id");
			References(x => x.Srce).Column("ReferenceCode");
			Map(x => x.Casnumber).Column("CASNumber");
			Map(x => x.Languagecode).Column("LanguageCode");
			Map(x => x.Substancename).Column("SubstanceName");
			Map(x => x.Yearofreference).Column("YearOfReference");
        }
    }
}
