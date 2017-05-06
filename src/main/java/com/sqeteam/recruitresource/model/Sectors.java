package com.sqeteam.recruitresource.model;
// Generated May 6, 2017 10:46:05 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Sectors generated by hbm2java
 */
@Entity
@Table(name="sectors"
    ,catalog="recruitresource"
)
public class Sectors  implements java.io.Serializable {


     private Short idSectors;
     private String sectorTitle;
     private Set<JobTitles> jobTitleses = new HashSet<JobTitles>(0);
     private Set<ProfessionalQualifications> professionalQualificationses = new HashSet<ProfessionalQualifications>(0);

    public Sectors() {
    }

    public Sectors(String sectorTitle, Set<JobTitles> jobTitleses, Set<ProfessionalQualifications> professionalQualificationses) {
       this.sectorTitle = sectorTitle;
       this.jobTitleses = jobTitleses;
       this.professionalQualificationses = professionalQualificationses;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="idSectors", unique=true, nullable=false)
    public Short getIdSectors() {
        return this.idSectors;
    }
    
    public void setIdSectors(Short idSectors) {
        this.idSectors = idSectors;
    }

    
    @Column(name="sectorTitle", length=45)
    public String getSectorTitle() {
        return this.sectorTitle;
    }
    
    public void setSectorTitle(String sectorTitle) {
        this.sectorTitle = sectorTitle;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="sectors")
    public Set<JobTitles> getJobTitleses() {
        return this.jobTitleses;
    }
    
    public void setJobTitleses(Set<JobTitles> jobTitleses) {
        this.jobTitleses = jobTitleses;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="sectors")
    public Set<ProfessionalQualifications> getProfessionalQualificationses() {
        return this.professionalQualificationses;
    }
    
    public void setProfessionalQualificationses(Set<ProfessionalQualifications> professionalQualificationses) {
        this.professionalQualificationses = professionalQualificationses;
    }




}


