/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.action;

import com.opensymphony.xwork2.ActionSupport;
import com.sqeteam.recruitresource.datacontroller.StaticDataController;
import com.sqeteam.recruitresource.model.EducationLevels;
import com.sqeteam.recruitresource.model.EmploymentLevels;
import com.sqeteam.recruitresource.model.JobTitles;
import com.sqeteam.recruitresource.model.Persons;
import com.sqeteam.recruitresource.model.Sectors;
import com.sqeteam.recruitresource.search.ISearch;
import com.sqeteam.recruitresource.search.SectorSearch;
import com.sqeteam.recruitresource.search.TotalPersonSearch;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dinuzhka
 */
public class SearchAction extends ActionSupport {

    private List<EducationLevels> educationLevels;
    private List<Sectors> sectors;
    private List<JobTitles> jobTitles;
    private List<EmploymentLevels> employmentLevels;
    private List<Persons> searchResult;
    
    private Sectors searchSector;
    private int[] searchTitles;

    public String search() {
        StaticDataController sdc = new StaticDataController();
        setEducationLevels(sdc.getEducationLevels());
        setSectors(sdc.getSectors());
        setEmploymentLevels(sdc.getEmploymentLevels());
        setJobTitles(sdc.getJobTitles());
        return "success";
    }
    
    public String doSearch(){
        List<ISearch> exec=getSearchExecutors();
        for(ISearch se:exec){
            searchResult=se.executeSearch(searchResult);
        }
        return "success";
    }
    
 
    public List<ISearch> getSearchExecutors(){
        List<ISearch> exec=new ArrayList<>();
        exec.add(new TotalPersonSearch());
        exec.add(new SectorSearch(searchSector.getIdSectors()));
        return exec;
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
     * @return the searchSector
     */
    public Sectors getSearchSector() {
        return searchSector;
    }

    /**
     * @param searchSector the searchSector to set
     */
    public void setSearchSector(Sectors searchSector) {
        this.searchSector = searchSector;
    }

    /**
     * @return the searchTitles
     */
    public int[] getSearchTitles() {
        return searchTitles;
    }

    /**
     * @param searchTitles the searchTitles to set
     */
    public void setSearchTitles(int[] searchTitles) {
        this.searchTitles=searchTitles;
    }

    /**
     * @return the searchResult
     */
    public List<Persons> getSearchResult() {
        return searchResult;
    }

    /**
     * @param searchResult the searchResult to set
     */
    public void setSearchResult(List<Persons> searchResult) {
        this.searchResult = searchResult;
    }


}
