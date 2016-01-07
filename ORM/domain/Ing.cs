using System;
using System.Text;
using System.Collections.Generic;


namespace bd.whodd.Domain {
    
    public class Ing {
        public virtual string IngredientId { get; set; }
        public virtual Sun Sun { get; set; }
        public virtual Unit Unit { get; set; }
        public virtual Unitl Unitl { get; set; }
        public virtual Unitx Unitx { get; set; }
        public virtual Pp Pp { get; set; }
        public virtual Mp Mp { get; set; }
        public virtual DateTime? CreateDate { get; set; }
        public virtual string Quantity { get; set; }
        public virtual string Quantity2 { get; set; }
    }
}
