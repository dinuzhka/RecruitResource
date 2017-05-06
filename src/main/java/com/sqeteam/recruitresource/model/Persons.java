package com.sqeteam.recruitresource.model;
// Generated May 6, 2017 10:46:05 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Persons generated by hbm2java
 */
@Entity
@Table(name="persons"
    ,catalog="recruitresource"
)
public class Persons  implements java.io.Serializable {


     private int idUser;
     private EducationLevels educationLevels;
     private Login login;
     private String title;
     private String firstName;
     private String middleName;
     private String lastName;
     private String addressLine1;
     private String addressLine2;
     private String town;
     private String postcode;
     private String alternativeEmail;
     private String personalUrl;
     private byte[] photo;
     private Boolean female;
     private String postcodeStart;
     private String authorityToWorkStatement;
     private String contactPreference;
     private Short noOfGcses;
     private String gcseEnglishGrade;
     private String gcseMathsGrade;
     private Boolean fiveOrMoreGcses;
     private Short noOfAlevels;
     private Short ucasPoints;
     private String studentStatus;
     private String mobile;
     private String landline;
     private Date dob;
     private Short penaltyPoints;
     private String type;
     private Set<Skills> skillses = new HashSet<Skills>(0);
     private Set<Referees> refereeses = new HashSet<Referees>(0);
     private Set<Experiences> experienceses = new HashSet<Experiences>(0);
     private Set<ProfessionalQualifications> professionalQualificationses = new HashSet<ProfessionalQualifications>(0);
     private Set<EducationalQualifications> educationalQualificationses = new HashSet<EducationalQualifications>(0);
     private Set<JobTitles> jobTitleses = new HashSet<JobTitles>(0);

    public Persons() {
    }

	
    public Persons(int idUser, Login login, String firstName, String lastName) {
        this.idUser = idUser;
        this.login = login;
        this.firstName = firstName;
        this.lastName = lastName;
    }
    public Persons(int idUser, EducationLevels educationLevels, Login login, String title, String firstName, String middleName, String lastName, String addressLine1, String addressLine2, String town, String postcode, String alternativeEmail, String personalUrl, byte[] photo, Boolean female, String postcodeStart, String authorityToWorkStatement, String contactPreference, Short noOfGcses, String gcseEnglishGrade, String gcseMathsGrade, Boolean fiveOrMoreGcses, Short noOfAlevels, Short ucasPoints, String studentStatus, String mobile, String landline, Date dob, Short penaltyPoints, String type, Set<Skills> skillses, Set<Referees> refereeses, Set<Experiences> experienceses, Set<ProfessionalQualifications> professionalQualificationses, Set<EducationalQualifications> educationalQualificationses, Set<JobTitles> jobTitleses) {
       this.idUser = idUser;
       this.educationLevels = educationLevels;
       this.login = login;
       this.title = title;
       this.firstName = firstName;
       this.middleName = middleName;
       this.lastName = lastName;
       this.addressLine1 = addressLine1;
       this.addressLine2 = addressLine2;
       this.town = town;
       this.postcode = postcode;
       this.alternativeEmail = alternativeEmail;
       this.personalUrl = personalUrl;
       this.photo = photo;
       this.female = female;
       this.postcodeStart = postcodeStart;
       this.authorityToWorkStatement = authorityToWorkStatement;
       this.contactPreference = contactPreference;
       this.noOfGcses = noOfGcses;
       this.gcseEnglishGrade = gcseEnglishGrade;
       this.gcseMathsGrade = gcseMathsGrade;
       this.fiveOrMoreGcses = fiveOrMoreGcses;
       this.noOfAlevels = noOfAlevels;
       this.ucasPoints = ucasPoints;
       this.studentStatus = studentStatus;
       this.mobile = mobile;
       this.landline = landline;
       this.dob = dob;
       this.penaltyPoints = penaltyPoints;
       this.type = type;
       this.skillses = skillses;
       this.refereeses = refereeses;
       this.experienceses = experienceses;
       this.professionalQualificationses = professionalQualificationses;
       this.educationalQualificationses = educationalQualificationses;
       this.jobTitleses = jobTitleses;
    }
   
     @Id 

    
    @Column(name="idUser", unique=true, nullable=false)
    public int getIdUser() {
        return this.idUser;
    }
    
    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="EducationLevels_idEducationLevel")
    public EducationLevels getEducationLevels() {
        return this.educationLevels;
    }
    
    public void setEducationLevels(EducationLevels educationLevels) {
        this.educationLevels = educationLevels;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="login_idlogin", nullable=false)
    public Login getLogin() {
        return this.login;
    }
    
    public void setLogin(Login login) {
        this.login = login;
    }

    
    @Column(name="title", length=10)
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    
    @Column(name="firstName", nullable=false, length=45)
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    
    @Column(name="middleName", length=45)
    public String getMiddleName() {
        return this.middleName;
    }
    
    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    
    @Column(name="lastName", nullable=false, length=45)
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    
    @Column(name="addressLine1", length=45)
    public String getAddressLine1() {
        return this.addressLine1;
    }
    
    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    
    @Column(name="addressLine2", length=45)
    public String getAddressLine2() {
        return this.addressLine2;
    }
    
    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    
    @Column(name="town", length=45)
    public String getTown() {
        return this.town;
    }
    
    public void setTown(String town) {
        this.town = town;
    }

    
    @Column(name="postcode", length=10)
    public String getPostcode() {
        return this.postcode;
    }
    
    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    
    @Column(name="alternativeEmail", length=50)
    public String getAlternativeEmail() {
        return this.alternativeEmail;
    }
    
    public void setAlternativeEmail(String alternativeEmail) {
        this.alternativeEmail = alternativeEmail;
    }

    
    @Column(name="personalUrl", length=64)
    public String getPersonalUrl() {
        return this.personalUrl;
    }
    
    public void setPersonalUrl(String personalUrl) {
        this.personalUrl = personalUrl;
    }

    
    @Column(name="photo")
    public byte[] getPhoto() {
        return this.photo;
    }
    
    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    
    @Column(name="female")
    public Boolean getFemale() {
        return this.female;
    }
    
    public void setFemale(Boolean female) {
        this.female = female;
    }

    
    @Column(name="postcodeStart", length=10)
    public String getPostcodeStart() {
        return this.postcodeStart;
    }
    
    public void setPostcodeStart(String postcodeStart) {
        this.postcodeStart = postcodeStart;
    }

    
    @Column(name="authorityToWorkStatement")
    public String getAuthorityToWorkStatement() {
        return this.authorityToWorkStatement;
    }
    
    public void setAuthorityToWorkStatement(String authorityToWorkStatement) {
        this.authorityToWorkStatement = authorityToWorkStatement;
    }

    
    @Column(name="contactPreference", length=8)
    public String getContactPreference() {
        return this.contactPreference;
    }
    
    public void setContactPreference(String contactPreference) {
        this.contactPreference = contactPreference;
    }

    
    @Column(name="noOfGcses")
    public Short getNoOfGcses() {
        return this.noOfGcses;
    }
    
    public void setNoOfGcses(Short noOfGcses) {
        this.noOfGcses = noOfGcses;
    }

    
    @Column(name="gcseEnglishGrade", length=2)
    public String getGcseEnglishGrade() {
        return this.gcseEnglishGrade;
    }
    
    public void setGcseEnglishGrade(String gcseEnglishGrade) {
        this.gcseEnglishGrade = gcseEnglishGrade;
    }

    
    @Column(name="gcseMathsGrade", length=2)
    public String getGcseMathsGrade() {
        return this.gcseMathsGrade;
    }
    
    public void setGcseMathsGrade(String gcseMathsGrade) {
        this.gcseMathsGrade = gcseMathsGrade;
    }

    
    @Column(name="fiveOrMoreGcses")
    public Boolean getFiveOrMoreGcses() {
        return this.fiveOrMoreGcses;
    }
    
    public void setFiveOrMoreGcses(Boolean fiveOrMoreGcses) {
        this.fiveOrMoreGcses = fiveOrMoreGcses;
    }

    
    @Column(name="noOfAlevels")
    public Short getNoOfAlevels() {
        return this.noOfAlevels;
    }
    
    public void setNoOfAlevels(Short noOfAlevels) {
        this.noOfAlevels = noOfAlevels;
    }

    
    @Column(name="ucasPoints")
    public Short getUcasPoints() {
        return this.ucasPoints;
    }
    
    public void setUcasPoints(Short ucasPoints) {
        this.ucasPoints = ucasPoints;
    }

    
    @Column(name="studentStatus", length=13)
    public String getStudentStatus() {
        return this.studentStatus;
    }
    
    public void setStudentStatus(String studentStatus) {
        this.studentStatus = studentStatus;
    }

    
    @Column(name="mobile", length=16)
    public String getMobile() {
        return this.mobile;
    }
    
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    
    @Column(name="landline", length=16)
    public String getLandline() {
        return this.landline;
    }
    
    public void setLandline(String landline) {
        this.landline = landline;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="dob", length=10)
    public Date getDob() {
        return this.dob;
    }
    
    public void setDob(Date dob) {
        this.dob = dob;
    }

    
    @Column(name="penaltyPoints")
    public Short getPenaltyPoints() {
        return this.penaltyPoints;
    }
    
    public void setPenaltyPoints(Short penaltyPoints) {
        this.penaltyPoints = penaltyPoints;
    }

    
    @Column(name="type", length=45)
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="persons")
    public Set<Skills> getSkillses() {
        return this.skillses;
    }
    
    public void setSkillses(Set<Skills> skillses) {
        this.skillses = skillses;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="persons")
    public Set<Referees> getRefereeses() {
        return this.refereeses;
    }
    
    public void setRefereeses(Set<Referees> refereeses) {
        this.refereeses = refereeses;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="persons")
    public Set<Experiences> getExperienceses() {
        return this.experienceses;
    }
    
    public void setExperienceses(Set<Experiences> experienceses) {
        this.experienceses = experienceses;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="persons")
    public Set<ProfessionalQualifications> getProfessionalQualificationses() {
        return this.professionalQualificationses;
    }
    
    public void setProfessionalQualificationses(Set<ProfessionalQualifications> professionalQualificationses) {
        this.professionalQualificationses = professionalQualificationses;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="persons")
    public Set<EducationalQualifications> getEducationalQualificationses() {
        return this.educationalQualificationses;
    }
    
    public void setEducationalQualificationses(Set<EducationalQualifications> educationalQualificationses) {
        this.educationalQualificationses = educationalQualificationses;
    }

@ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(name="job_preferences", catalog="recruitresource", joinColumns = { 
        @JoinColumn(name="person_idUser", nullable=false, updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="JobTitles_idJobTitles", nullable=false, updatable=false) })
    public Set<JobTitles> getJobTitleses() {
        return this.jobTitleses;
    }
    
    public void setJobTitleses(Set<JobTitles> jobTitleses) {
        this.jobTitleses = jobTitleses;
    }




}


