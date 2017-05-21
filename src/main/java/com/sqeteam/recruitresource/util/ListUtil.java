/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.util;

import com.sqeteam.recruitresource.model.Persons;
import java.util.ArrayList;
import java.util.List;
import static javafx.scene.input.KeyCode.T;

/**
 *
 * @author Dinuzhka
 */
public class ListUtil {

    public static List<Persons> intersection(List<Persons> list1, List<Persons> list2) {
        List<Persons> list = new ArrayList<Persons>();
        for (Persons p : list1) {
            if (list2.contains(p)) {
                list.add(p);
            }
        }
        return list;
    }

    public static List<Persons> distinct(List<Persons> list1) {
        List<Persons> list = new ArrayList<Persons>();

        for (Persons p : list1) {
            if (!list.contains(p)) {
                list.add(p);
            }
        }

        return list;
    }
}
