using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class MpMap : ClassMap<Mp> {
        
        public MpMap() {
			Table("MP");
			LazyLoad();
			Id(x => x.MedicinalprodId).GeneratedBy.Assigned().Column("Medicinalprod_Id");
			References(x => x.Ccode).Column("Country");
			References(x => x.Org).Column("MarketingAuthorizationHolder");
			References(x => x.Prt).Column("ProductType");
			References(x => x.Prg).Column("ProductGroup");
			Map(x => x.Medid).Column("MedID");
			Map(x => x.Drugrecordnumber).Column("DrugRecordNumber").Not.Nullable();
			Map(x => x.Sequencenumber1).Column("SequenceNumber1").Not.Nullable();
			Map(x => x.Sequencenumber2).Column("SequenceNumber2").Not.Nullable();
			Map(x => x.Sequencenumber3).Column("SequenceNumber3").Not.Nullable();
			Map(x => x.Sequencenumber4).Column("SequenceNumber4").Not.Nullable();
			Map(x => x.Generic).Column("Generic").Not.Nullable();
			Map(x => x.Drugname).Column("DrugName").Not.Nullable();
			Map(x => x.Namespecifier).Column("NameSpecifier");
			Map(x => x.Marketingauthorizationnumber).Column("MarketingAuthorizationNumber");
			Map(x => x.Marketingauthorizationdate).Column("MarketingAuthorizationDate");
			Map(x => x.Marketingwithdrawaldate).Column("MarketingWithdrawalDate");
			Map(x => x.Company).Column("Company").Not.Nullable();
			Map(x => x.Referencecode).Column("ReferenceCode").Not.Nullable();
			Map(x => x.Sourcecountry).Column("SourceCountry").Not.Nullable();
			Map(x => x.Yearofreference).Column("YearOfReference");
			Map(x => x.Createdate).Column("CreateDate").Not.Nullable();
			Map(x => x.Datechanged).Column("DateChanged").Not.Nullable();
        }
    }
}
