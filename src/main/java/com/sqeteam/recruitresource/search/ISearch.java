/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.search;

import com.sqeteam.recruitresource.model.Persons;
import java.util.List;

/**
 *
 * @author Dinuzhka
 */
public interface ISearch {
    
    public List<Persons> executeSearch(List<Persons> persons);
}
