//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OsCoreApplication.DataLayer.EFModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Project
    {
        public long id { get; set; }
        public string ProjectName { get; set; }
        public string Address { get; set; }
        public string Acreage { get; set; }
        public string Price { get; set; }
        public string Direction { get; set; }
        public string Width { get; set; }
        public string Height { get; set; }
        public string Juridical { get; set; }
        public string Thumbnail { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> DateCreated { get; set; }
        public Nullable<System.DateTime> DateUpdated { get; set; }
        public Nullable<long> UserCreated { get; set; }
        public Nullable<long> UserUpdated { get; set; }
        public Nullable<bool> IsShow { get; set; }
        public Nullable<bool> IsHighlights { get; set; }
        public Nullable<long> idType { get; set; }
        public Nullable<long> idCategory { get; set; }
        public string NumerOfBuilding { get; set; }
        public string NumberOfFloors { get; set; }
        public string Type { get; set; }
        public Nullable<bool> IsSaled { get; set; }
    }
}
