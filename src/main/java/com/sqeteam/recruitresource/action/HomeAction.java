/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sqeteam.recruitresource.datacontroller.EducationQualificationDataController;
import com.sqeteam.recruitresource.datacontroller.ExperienceDataController;
import com.sqeteam.recruitresource.datacontroller.PersonDataController;
import com.sqeteam.recruitresource.datacontroller.ProfessionalQualificationDataController;
import com.sqeteam.recruitresource.datacontroller.RefereeDataController;
import com.sqeteam.recruitresource.datacontroller.SkillDataController;
import com.sqeteam.recruitresource.datacontroller.StaticDataController;
import com.sqeteam.recruitresource.model.EducationLevels;
import com.sqeteam.recruitresource.model.EducationalQualifications;
import com.sqeteam.recruitresource.model.EmploymentLevels;
import com.sqeteam.recruitresource.model.Experiences;
import com.sqeteam.recruitresource.model.JobTitles;
import com.sqeteam.recruitresource.model.Login;
import com.sqeteam.recruitresource.model.Persons;
import com.sqeteam.recruitresource.model.ProfessionalQualifications;
import com.sqeteam.recruitresource.model.Referees;
import com.sqeteam.recruitresource.model.Sectors;
import com.sqeteam.recruitresource.model.Skills;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.struts2.dispatcher.SessionMap;

/**
 *
 * @author Dinuzhka
 */
public class HomeAction extends ActionSupport {

    private Persons person;
    private List<EducationLevels> educationLevels;
    private List<Sectors> sectors;
    private List<JobTitles> jobTitles;
    private List<EmploymentLevels> employmentLevels;

    private List<EducationalQualifications> educationQualifications;
    private List<ProfessionalQualifications> professionalQualifications;
    private List<Experiences> experiences;
    private List<Skills> skills;
    private List<Referees> referees;

    private EducationalQualifications newEducationalQualifications;
    private ProfessionalQualifications newProfessionalQualifications;
    private Experiences newExperiences;
    private Referees newReferees;
    private int[] selectedJobTitles;
    private Skills newSkills;

    private int loginId;

    public String goHome() {
        try {
            Map<String, Object> session = ActionContext.getContext().getSession();
            if (session.containsKey("logged_user")) {

                Login login = (Login) session.get("logged_user");
                setLoginId(login.getIdlogin());

                PersonDataController pdc = new PersonDataController();
                setPerson(pdc.getPerson(login.getEmail()));

                StaticDataController sdc = new StaticDataController();
                setEducationLevels(sdc.getEducationLevels());
                setSectors(sdc.getSectors());
                setEmploymentLevels(sdc.getEmploymentLevels());
                setJobTitles(sdc.getJobTitles());

                EducationQualificationDataController eqdc = new EducationQualificationDataController();
                setEducationQualifications(eqdc.getEducationQualifications(getPerson()));

                ProfessionalQualificationDataController pqdc = new ProfessionalQualificationDataController();
                setProfessionalQualifications(pqdc.getProfessionalQualifications(getPerson()));

                ExperienceDataController edc = new ExperienceDataController();
                setExperiences(edc.getExperiences(getPerson()));

                SkillDataController skdc = new SkillDataController();
                setSkills(skdc.getSkills(getPerson()));

                RefereeDataController rdc = new RefereeDataController();
                setReferees(rdc.getReferees(getPerson()));

                List<JobTitles> titles = pdc.getJobTitleses(getPerson());
                if (titles != null) {
                    setSelectedJobTitles(new int[titles.size()]);
                    int i = 0;
                    for (JobTitles t : titles) {
                        getSelectedJobTitles()[i] = t.getIdJobTitles();
                        i++;
                    }
                }
                return "success";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
        return "fail";
    }

    public String logout() {
        SessionMap session = (SessionMap) ActionContext.getContext().getSession();
        session.invalidate();
        return "success";
    }

    public String addEducationalQualification() {
        //newEducationalQualifications.setPersons(person);

        EducationQualificationDataController eqdc = new EducationQualificationDataController();
        eqdc.addEducationalQualification(getNewEducationalQualifications());
        return "success";
    }

    public String addProfessionalQualification() {
        //newEducationalQualifications.setPersons(person);

        ProfessionalQualificationDataController pqdc = new ProfessionalQualificationDataController();
        pqdc.addProfessionalQualification(getNewProfessionalQualifications());
        return "success";
    }

    public String addExperience() {
        //newEducationalQualifications.setPersons(person);

        ExperienceDataController edc = new ExperienceDataController();

        getNewExperiences().setDateStarted(new Date(2010, 11, 23));
        getNewExperiences().setDateFinished(new Date(2012, 12, 12));
        edc.addExperience(getNewExperiences());
        return "success";
    }

    public String addSkill() {
        //newEducationalQualifications.setPersons(person);

        SkillDataController sdc = new SkillDataController();
        sdc.addSkill(getNewSkills());
        return "success";
    }

    public String addReferee() {
        //newEducationalQualifications.setPersons(person);

        RefereeDataController sdc = new RefereeDataController();
        sdc.addReferees(getNewReferees());
        return "success";
    }

    public String updateUserProfile() {

        PersonDataController pdc = new PersonDataController();
        pdc.updatePerson(getPerson());
        return "success";
    }

    public String addJobPreferences() {
        try {
            Login login = (Login) ActionContext.getContext().getSession().get("logged_user");
            PersonDataController pdc = new PersonDataController();
            Persons jobPerson = pdc.getPerson(login.getEmail());
            Set<JobTitles> jobList = new HashSet<JobTitles>();

            StaticDataController sdc = new StaticDataController();
            for (JobTitles title : sdc.getJobTitles()) {
                if (jobTitleSelected(title, getSelectedJobTitles())) {
                    jobList.add(title);
                }
            }

            jobPerson.setJobTitleses(jobList);
            pdc.updatePerson(jobPerson);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }

    private boolean jobTitleSelected(JobTitles title, int[] selectedJobTitles) {
        boolean selected = false;
        for (int jt : selectedJobTitles) {
            if (jt == title.getIdJobTitles()) {
                selected = true;
            }
        }
        return selected;
    }

    /**
     * @return the person
     */
    public Persons getPerson() {
        return person;
    }

    /**
     * @param person the person to set
     */
    public void setPerson(Persons person) {
        this.person = person;
    }

    /**
     * @return the educationLevels
     */
    public List<EducationLevels> getEducationLevels() {
        return educationLevels;
    }

    /**
     * @param educationLevels the educationLevels to set
     */
    public void setEducationLevels(List<EducationLevels> educationLevels) {
        this.educationLevels = educationLevels;
    }

    /**
     * @return the educationQualifications
     */
    public List<EducationalQualifications> getEducationQualifications() {
        return educationQualifications;
    }

    /**
     * @param educationQualifications the educationQualifications to set
     */
    public void setEducationQualifications(List<EducationalQualifications> educationQualifications) {
        this.educationQualifications = educationQualifications;
    }

    /**
     * @return the newEducationalQualifications
     */
    public EducationalQualifications getNewEducationalQualifications() {
        return newEducationalQualifications;
    }

    /**
     * @param newEducationalQualifications the newEducationalQualifications to
     * set
     */
    public void setNewEducationalQualifications(EducationalQualifications newEducationalQualifications) {
        this.newEducationalQualifications = newEducationalQualifications;
    }

    /**
     * @return the professionalQualifications
     */
    public List<ProfessionalQualifications> getProfessionalQualifications() {
        return professionalQualifications;
    }

    /**
     * @param professionalQualifications the professionalQualifications to set
     */
    public void setProfessionalQualifications(List<ProfessionalQualifications> professionalQualifications) {
        this.professionalQualifications = professionalQualifications;
    }

    /**
     * @return the newProfessionalQualifications
     */
    public ProfessionalQualifications getNewProfessionalQualifications() {
        return newProfessionalQualifications;
    }

    /**
     * @param newProfessionalQualifications the newProfessionalQualifications to
     * set
     */
    public void setNewProfessionalQualifications(ProfessionalQualifications newProfessionalQualifications) {
        this.newProfessionalQualifications = newProfessionalQualifications;
    }

    /**
     * @return the sectors
     */
    public List<Sectors> getSectors() {
        return sectors;
    }

    /**
     * @param sectors the sectors to set
     */
    public void setSectors(List<Sectors> sectors) {
        this.sectors = sectors;
    }

    /**
     * @return the jobTitles
     */
    public List<JobTitles> getJobTitles() {
        return jobTitles;
    }

    /**
     * @param jobTitles the jobTitles to set
     */
    public void setJobTitles(List<JobTitles> jobTitles) {
        this.jobTitles = jobTitles;
    }

    /**
     * @return the employmentLevels
     */
    public List<EmploymentLevels> getEmploymentLevels() {
        return employmentLevels;
    }

    /**
     * @param employmentLevels the employmentLevels to set
     */
    public void setEmploymentLevels(List<EmploymentLevels> employmentLevels) {
        this.employmentLevels = employmentLevels;
    }

    /**
     * @return the experiences
     */
    public List<Experiences> getExperiences() {
        return experiences;
    }

    /**
     * @param experiences the experiences to set
     */
    public void setExperiences(List<Experiences> experiences) {
        this.experiences = experiences;
    }

    /**
     * @return the newExperiences
     */
    public Experiences getNewExperiences() {
        return newExperiences;
    }

    /**
     * @param newExperiences the newExperiences to set
     */
    public void setNewExperiences(Experiences newExperiences) {
        this.newExperiences = newExperiences;
    }

    /**
     * @return the newSkills
     */
    public Skills getNewSkills() {
        return newSkills;
    }

    /**
     * @param newSkills the newSkills to set
     */
    public void setNewSkills(Skills newSkills) {
        this.newSkills = newSkills;
    }

    /**
     * @return the selectedJobTitles
     */
    public int[] getSelectedJobTitles() {
        return selectedJobTitles;
    }

    /**
     * @return the skills
     */
    public List<Skills> getSkills() {
        return skills;
    }

    /**
     * @param skills the skills to set
     */
    public void setSkills(List<Skills> skills) {
        this.skills = skills;
    }

    /**
     * @return the newReferees
     */
    public Referees getNewReferees() {
        return newReferees;
    }

    /**
     * @param newReferees the newReferees to set
     */
    public void setNewReferees(Referees newReferees) {
        this.newReferees = newReferees;
    }

    /**
     * @param selectedJobTitles the selectedJobTitles to set
     */
    public void setSelectedJobTitles(int[] selectedJobTitles) {
        this.selectedJobTitles = selectedJobTitles;
    }

    /**
     * @return the referees
     */
    public List<Referees> getReferees() {
        return referees;
    }

    /**
     * @param referees the referees to set
     */
    public void setReferees(List<Referees> referees) {
        this.referees = referees;
    }

    /**
     * @return the loginId
     */
    public int getLoginId() {
        return loginId;
    }

    /**
     * @param loginId the loginId to set
     */
    public void setLoginId(int loginId) {
        this.loginId = loginId;
    }

}
