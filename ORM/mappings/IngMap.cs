using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class IngMap : ClassMap<Ing> {
        
        public IngMap() {
			Table("ING");
			LazyLoad();
			Id(x => x.IngredientId).GeneratedBy.Assigned().Column("Ingredient_Id");
			References(x => x.Sun).Column("Substance_Id");
			References(x => x.Unit).Column("Unit");
			References(x => x.Unitl).Column("Unit");
			References(x => x.Unitx).Column("Unit");
			References(x => x.Pp).Column("Pharmproduct_Id");
			References(x => x.Mp).Column("Medicinalprod_Id");
			Map(x => x.CreateDate).Column("Create_Date");
			Map(x => x.Quantity).Column("Quantity");
			Map(x => x.Quantity2).Column("Quantity-2");
        }
    }
}
