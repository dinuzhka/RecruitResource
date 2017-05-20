<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="ace-settings-container" id="ace-settings-container">
    

    <div class="ace-settings-box clearfix" id="ace-settings-box">
        <div class="pull-left width-50">
            <div class="ace-settings-item">
                <div class="pull-left">
                    <select id="skin-colorpicker" class="hide">
                        <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                        <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                        <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                        <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                    </select>
                </div>
                <span>&nbsp; Choose Skin</span>
            </div>

            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
            </div>

            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
            </div>

            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
            </div>

            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
            </div>

            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
                <label class="lbl" for="ace-settings-add-container">
                    Inside
                    <b>.container</b>
                </label>
            </div>
        </div><!-- /.pull-left -->

        <div class="pull-left width-50">
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
            </div>

            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
            </div>

            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
            </div>
        </div><!-- /.pull-left -->
    </div><!-- /.ace-settings-box -->
</div><!-- /.ace-settings-container -->

<div class="page-header">
    <h1>
        Edit my profile
    </h1>
</div><!-- /.page-header -->

<div class="row">
    <div class="col-xs-12">

        <div >
            <div id="user-profile-2" class="user-profile">
                <div class="tabbable">
                    <ul class="nav nav-tabs padding-18">
                        <li class="active">
                            <a data-toggle="tab" href="#home">
                                <i class="green ace-icon fa fa-user bigger-120"></i>
                                Profile
                            </a>
                        </li>

                        <li>
                            <a data-toggle="tab" href="#feed">
                                <i class="orange ace-icon fa fa-rss bigger-120"></i>
                                Educational Qualifications
                            </a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#professional">
                                <i class="orange ace-icon fa fa-rss bigger-120"></i>
                                Professional Qualifications
                            </a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#experience">
                                <i class="blue ace-icon fa fa-users bigger-120"></i>
                                Experience
                            </a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#friends">
                                <i class="blue ace-icon fa fa-users bigger-120"></i>
                                Job Preferences
                            </a>
                        </li>

                    </ul>

                    <div class="tab-content no-border padding-24">
                        <div id="home" class="tab-pane in active">
                            <form action="UpdateUserProfile" method="POST">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-3 center">
                                        <span class="profile-picture">
                                            <img class="editable img-responsive" alt="Alex's Avatar" id="avatar2" src="template/assets/images/avatars/profile-pic.jpg" />
                                        </span>

                                        <div class="space space-4"></div>

                                        <a href="#" class="btn btn-sm btn-block btn-primary">
                                            <i class="ace-icon fa fa-download bigger-110"></i>
                                            <span class="bigger-110">Download CV</span>
                                        </a>
                                        <button type="submit" class="btn btn-sm btn-block btn-primary">                                             
                                            <i class="ace-icon fa fa-download bigger-110"></i>
                                            <span class="bigger-110">Update Profile</span>
                                        </button>
                                    </div><!-- /.col -->


                                    <div class="col-xs-12 col-sm-9">
                                        <h4 class="blue">
                                            <span class="middle"> 
                                                ${person.title} ${person.firstName} ${person.lastName}
                                            </span>
                                        </h4>

                                        <div class="profile-user-info">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Title </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.title"  name="person.title" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> First Name </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.firstName"  name="person.firstName" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Last Name </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.lastName"  name="person.lastName" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Address </div>
                                                <div class="profile-info-value">
                                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                    <span><s:textfield id="person.addressLine1"  name="person.addressLine1" placeholder="Address 1" /></span>
                                                    <span><s:textfield id="person.addressLine2"  name="person.addressLine2"  placeholder="Address 2"/></span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Town </div>
                                                <div class="profile-info-value">
                                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                    <s:textfield id="person.town"  name="person.town" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Post Code </div>
                                                <div class="profile-info-value">
                                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                    <s:textfield id="person.postcode"  name="person.postcode" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Alternative Email </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.alternativeEmail"  name="person.alternativeEmail" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Personal Profile </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.personalUrl"  name="person.personalUrl" />
                                                    <a href="${person.personalUrl}">Go to profile</a>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Gender </div>
                                                <div class="profile-info-value">
                                                    <s:radio id="person.female" name="person.female" list="#{'0':'Male','1':'Female'}" value="0"  />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Education Level </div>
                                                <div class="profile-info-value">
                                                    <s:select headerKey="-1" headerValue="Select Education Level"
                                                              list="educationLevels"
                                                              name="person.educationLevels.idEducationLevel"
                                                              listKey="idEducationLevel"
                                                              listValue="educationLevel"
                                                              value="person.educationLevels.idEducationLevel">

                                                    </s:select>
                                                    <s:hidden name="person.type"  id="person.type"  />
                                                    <s:hidden name="person.idUser"  id="person.idUser"  />
                                                    <s:hidden name="person.login.idlogin"  id="person.login.idlogin"  />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Authority To Work </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.authorityToWorkStatement"  name="person.authorityToWorkStatement" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Contact Preference </div>
                                                <div class="profile-info-value">
                                                    <s:select id="person.contactPreference" name="person.contactPreference" list="#{'Mobile':'Mobile','Landline':'Landline','Email1':'Email1','Email2':'Email2'}" value="Mobile"  />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> No of Gcses </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.noOfGcses"  name="person.noOfGcses" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Gcses english grade </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.gcseEnglishGrade"  name="person.gcseEnglishGrade" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Gcses maths grade </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.gcseMathsGrade"  name="person.gcseMathsGrade" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Is five or more GCEs </div>
                                                <div class="profile-info-value">
                                                    <span>
                                                        <s:radio name="person.fiveOrMoreGcses" id="person.fiveOrMoreGcses" list="#{'1':'Yes','2':'No'}" value="1" />
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> No of A levels </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.noOfAlevels"  name="person.noOfAlevels" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> UCAS points </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.ucasPoints"  name="person.ucasPoints" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Student Status </div>
                                                <div class="profile-info-value">
                                                    <s:select id="person.studentStatus" name="person.studentStatus" list="#{'Full-time':'Full-time','Part-time':'Part-time','Not a student':'Not a student'}" value="Full-time"  />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Mobile </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.mobile"  name="person.mobile" />
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> Landline </div>
                                                <div class="profile-info-value">
                                                    <s:textfield id="person.landline"  name="person.landline" />
                                                </div>
                                            </div>
                                        </div>

                                    </div><!-- /.col -->
                                </div><!-- /.row -->
                            </form>
                            <div class="space-20"></div>

                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="widget-box transparent">
                                        <div class="widget-header widget-header-small">
                                            <h4 class="widget-title smaller">
                                                <i class="ace-icon fa fa-check-square-o bigger-110"></i>
                                                Referees
                                            </h4>
                                        </div>

                                        <div class="widget-body">
                                            <div class="widget-main">
                                                <form method="POST" action="AddReferee">
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> Title </div>
                                                        <div class="profile-info-value">
                                                            <span><s:textfield name="newReferees.title" id="newReferees.title" /></span>
                                                        </div>
                                                        <div class="profile-info-name"> Forename </div>
                                                        <div class="profile-info-value">
                                                            <span><s:textfield name="newReferees.forename" id="newReferees.forename" /></span>
                                                        </div>
                                                        <s:hidden name="newReferees.persons.idUser" value="%{person.idUser}" />
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> Surname </div>
                                                        <div class="profile-info-value">
                                                            <span><s:textfield name="newReferees.surname" id="newReferees.surname" /></span>
                                                        </div>
                                                        <div class="profile-info-name"> Email </div>
                                                        <div class="profile-info-value">
                                                            <span><s:textfield name="newReferees.email" id="newReferees.email" /></span>
                                                        </div>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> Contact No </div>
                                                        <div class="profile-info-value">
                                                            <span><s:textfield name="newReferees.contactPhone" id="newReferees.contactPhone" /></span>
                                                        </div>
                                                        <div class="profile-info-name"> Relationship </div>
                                                        <div class="profile-info-value">                                                            
                                                            <s:select id="newSkills.relationship" name="newSkills.relationship" list="#{'employer':'employer','academic':'academic'}" value="employer"  />
                                                        </div>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> Verified </div>
                                                        <div class="profile-info-value">
                                                            <span>
                                                                <s:radio name="newReferees.verified" id="newReferees.verified" list="#{'1':'Yes','2':'No'}" value="1" />
                                                            </span>
                                                        </div>
                                                        <div class="profile-info-name"> How Verified </div>
                                                        <div class="profile-info-value">
                                                            <span><s:textfield name="newReferees.howVerified" id="newReferees.howVerified" /></span>
                                                        </div>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <button type="submit" class="btn btn-sm btn-primary btn-white btn-round"> 
                                                            <span class="bigger-110">Add Referee</span>
                                                            <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                                        </button>
                                                    </div>
                                                </form>
                                                <br/>
                                                <s:iterator value="referees">
                                                    <div class="profile-activity clearfix">
                                                        <div>
                                                            <b>Title :</b>${title}&nbsp;
                                                            <b>Forename :</b>${forename}&nbsp;
                                                            <b>Surname :</b>${surname}&nbsp;
                                                            <b>Email :</b>${email}&nbsp;
                                                            <b>Contact No :</b>${contactPhone}&nbsp;
                                                            <b>Relationship :</b>${relationship}&nbsp;
                                                            <b>Verified :</b>${verified}&nbsp;
                                                            <b>How Verified :</b>${howVerified}&nbsp;
                                                        </div>
                                                    </div>
                                                </s:iterator>

                                            </div>


                                        </div>
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-6">
                                    <div class="widget-box transparent">
                                        <div class="widget-header widget-header-small header-color-blue2">
                                            <h4 class="widget-title smaller">
                                                <i class="ace-icon fa fa-lightbulb-o bigger-120"></i>
                                                My Skills
                                            </h4>
                                        </div>

                                        <div class="widget-body">
                                            <div class="widget-main padding-16">
                                                <div class="clearfix">
                                                    <div class="grid3 center">
                                                        <form method="POST" action="AddSkill">
                                                            <div class="profile-info-row">
                                                                <div class="profile-info-name"> Skill Name </div>
                                                                <div class="profile-info-value">
                                                                    <span><s:textfield name="newSkills.skillName" id="newSkills.skillName" /></span>
                                                                </div>
                                                                <div class="profile-info-name"> Skill Level </div>
                                                                <div class="profile-info-value">
                                                                    <s:select id="newSkills.skillLevel" name="newSkills.skillLevel" list="#{'Basic':'Basic','Good':'Good','Excellent':'Excellent'}" value="Basic"  />
                                                                </div>
                                                            </div>
                                                            <div class="profile-info-row">
                                                                <s:hidden name="newSkills.persons.idUser" value="%{person.idUser}" />
                                                                <div class="profile-info-name"> Verified </div>
                                                                <div class="profile-info-value">
                                                                    <span>
                                                                        <s:radio name="newSkills.verified" id="newSkills.verified" list="#{'1':'Yes','2':'No'}" value="1" />
                                                                    </span>
                                                                </div>
                                                                <div class="profile-info-name"> How Verified </div>
                                                                <div class="profile-info-value">
                                                                    <span><s:textfield name="newSkills.howVerified" id="newSkills.howVerified" /></span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-info-row">
                                                                <button type="submit" class="btn btn-sm btn-primary btn-white btn-round"> 
                                                                    <span class="bigger-110">Add Skill</span>
                                                                    <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>

                                                <div class="hr hr-16"></div>

                                                <div class="profile-skills">
                                                    <s:iterator value="skills">
                                                        <div class="progress">
                                                            <div class="progress-bar" style="width:100%">
                                                                <span class="pull-left">${skillName}</span>
                                                                <span class="pull-right">${skillLevel}</span>
                                                            </div>
                                                        </div>
                                                    </s:iterator>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /#home -->

                        <div id="feed" class="tab-pane">
                            <div class="profile-feed row">
                                <div class="col-sm-12">
                                    <s:iterator value="educationQualifications">

                                        <div class="profile-activity clearfix">
                                            <div>
                                                <img class="pull-left" alt="Alex Doe's avatar" src="template/assets/images/avatars/avatar5.png" />
                                                <a class="user" href="#"> ${educationLevels.educationLevel} - ${courseName} </a>
                                                &nbsp; <b>Qualification Type</b> : ${qualificationType}, 
                                                <b>Vocational</b> : ${vocational},
                                                <b>Main Subject</b> : ${mainSubject},
                                                <b>Name of Institutions</b> : ${nameOfInstitutions},
                                                <b>Country</b> : ${country},
                                                <b>Year Obtained</b> : ${yearObtained},
                                                <b>Result</b> : ${result},
                                                <b>Theses Title</b> : ${thesesTitle},
                                                <b>Verified</b> : ${verified},
                                                <b>How Verified</b> : ${howVerified},
                                            </div>

                                            <div class="tools action-buttons">
                                                <a href="#" class="red">
                                                    <i class="ace-icon fa fa-times bigger-125"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </s:iterator>

                                </div><!-- /.col -->


                            </div><!-- /.row -->

                            <div class="space-12"></div>

                            <div class="center">
                                <form action="AddEducationalQualification" method="POST">
                                    <h3>Add new education qualification</h3>
                                    <div class="profile-info-row">
                                        <div class="profile-info-name"> Course Name </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newEducationalQualifications.courseName" id="newEducationalQualifications.courseName" /></span>
                                        </div>
                                        <div class="profile-info-name"> Qualification </div>
                                        <div class="profile-info-value">
                                            <s:select headerKey="-1" headerValue="Select Education Level"
                                                      list="educationLevels"
                                                      name="newEducationalQualifications.educationLevels.idEducationLevel"
                                                      listKey="idEducationLevel"
                                                      listValue="educationLevel"
                                                      value="newEducationalQualifications.educationLevels.idEducationLevel">
                                            </s:select>
                                        </div>
                                        <s:hidden name="newEducationalQualifications.persons.idUser" value="%{person.idUser}" />
                                        <div class="profile-info-name"> Vocational </div>
                                        <div class="profile-info-value">
                                            <span>
                                                <s:radio name="newEducationalQualifications.vocational" id="newEducationalQualifications.vocational" list="#{'1':'Yes','2':'No'}" value="1" />
                                            </span>
                                        </div>
                                        <div class="profile-info-name"> Main Subject </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newEducationalQualifications.mainSubject" id="newEducationalQualifications.mainSubject" /></span>
                                        </div>
                                    </div>
                                    <div class="profile-info-row">
                                        <div class="profile-info-name"> Institution Name </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newEducationalQualifications.nameOfInstitutions" id="newEducationalQualifications.nameOfInstitutions" /></span>
                                        </div>
                                        <div class="profile-info-name"> Country </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newEducationalQualifications.country" id="newEducationalQualifications.country" /></span>
                                        </div>
                                        <div class="profile-info-name"> Year </div>
                                        <div class="profile-info-value">

                                        </div>
                                        <div class="profile-info-name"> Result </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newEducationalQualifications.result" id="newEducationalQualifications.result" /></span>
                                        </div>
                                    </div>
                                    <div class="profile-info-row">
                                        <div class="profile-info-name"> Type </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newEducationalQualifications.qualificationType" id="newEducationalQualifications.qualificationType" /></span>
                                        </div>
                                        <div class="profile-info-name"> Theses title </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newEducationalQualifications.thesesTitle" id="newEducationalQualifications.thesesTitle" /></span>
                                        </div>
                                        <div class="profile-info-name"> Verified </div>
                                        <div class="profile-info-value">
                                            <span>
                                                <s:radio name="newEducationalQualifications.verified" id="newEducationalQualifications.verified" list="#{'1':'Yes','2':'No'}" value="1" />
                                            </span>
                                        </div>
                                        <div class="profile-info-name"> How Verified </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newEducationalQualifications.howVerified" id="newEducationalQualifications.howVerified" /></span>
                                        </div>

                                    </div>
                                    <button type="submit" class="btn btn-sm btn-primary btn-white btn-round"> 
                                        <span class="bigger-110">Add Education Qualification</span>
                                        <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                    </button>
                                </form>
                            </div> 
                        </div><!-- /#feed -->



                        <div id="professional" class="tab-pane">
                            <div class="profile-feed row">
                                <div class="col-sm-12">
                                    <s:iterator value="professionalQualifications">

                                        <div class="profile-activity clearfix">
                                            <div>
                                                <img class="pull-left" alt="Alex Doe's avatar" src="template/assets/images/avatars/avatar5.png" />
                                                <a class="user" href="#"> ${sectors.sectorTitle} :  ${otherSector} </a>
                                                &nbsp; <b>Qualification</b> : ${qualificationName}, 
                                                <b>Awarding Body</b> : ${awardingBody},
                                                <b>Year Obtained</b> : ${yearObtained},
                                                <b>Result</b> : ${result},
                                                <b>Verified</b> : ${verified},
                                                <b>How Verified</b> : ${howVerified},
                                            </div>

                                            <div class="tools action-buttons">
                                                <a href="#" class="red">
                                                    <i class="ace-icon fa fa-times bigger-125"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </s:iterator>

                                </div><!-- /.col -->


                            </div><!-- /.row -->

                            <div class="space-12"></div>

                            <div class="center">
                                <form action="AddProfessionalQualification" method="POST">
                                    <h3>Add new professional qualification</h3>
                                    <div class="profile-info-row">
                                        <div class="profile-info-name"> Qualification Name </div>
                                        <div class="profile-info-value">
                                            <s:textfield name="newProfessionalQualifications.qualificationName" id="newProfessionalQualifications.qualificationName" />
                                        </div>
                                        <div class="profile-info-name"> Sector </div>
                                        <div class="profile-info-value">
                                            <s:select headerKey="-1" headerValue="Select Sector"
                                                      list="sectors"
                                                      name="newProfessionalQualifications.sectors.idSectors"
                                                      listKey="idSectors"
                                                      listValue="sectorTitle"
                                                      value="newProfessionalQualifications.sectors.idSectors">
                                            </s:select>
                                        </div>
                                        <s:hidden name="newProfessionalQualifications.persons.idUser" value="%{person.idUser}" />
                                        <div class="profile-info-name"> Other Sector </div>
                                        <div class="profile-info-value">
                                            <span>
                                                <s:textfield name="newProfessionalQualifications.otherSector" id="newProfessionalQualifications.otherSector" />
                                            </span>
                                        </div>
                                        <div class="profile-info-name"> Awarding Body </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newProfessionalQualifications.awardingBody" id="newProfessionalQualifications.awardingBody" /></span>
                                        </div>
                                    </div>
                                    <div class="profile-info-row">
                                        <div class="profile-info-name"> Year </div>
                                        <div class="profile-info-value">

                                        </div>
                                        <div class="profile-info-name"> Result </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newProfessionalQualifications.result" id="newProfessionalQualifications.result" /></span>
                                        </div>
                                        <div class="profile-info-name"> Verified </div>
                                        <div class="profile-info-value">
                                            <span>
                                                <s:radio name="newProfessionalQualifications.verified" id="newProfessionalQualifications.verified" list="#{'1':'Yes','2':'No'}" value="1" />
                                            </span>
                                        </div>
                                        <div class="profile-info-name"> How Verified </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newProfessionalQualifications.howVerified" id="newProfessionalQualifications.howVerified" /></span>
                                        </div>
                                    </div> 
                                    <button type="submit" class="btn btn-sm btn-primary btn-white btn-round"> 
                                        <span class="bigger-110">Add Professional Qualification</span>
                                        <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                    </button>
                                </form>
                            </div> 
                        </div><!-- /#feed -->

                        <div id="experience" class="tab-pane">
                            <div class="profile-feed row">
                                <div class="col-sm-12">
                                    <s:iterator value="experiences">

                                        <div class="profile-activity clearfix">
                                            <div>
                                                <img class="pull-left" alt="Alex Doe's avatar" src="template/assets/images/avatars/avatar5.png" />
                                                <a class="user" href="#"> ${jobTitles.jobTitle} : ${otherJobTitle}</a>
                                                &nbsp; <b>From</b> : ${dateStarted}, 
                                                <b>To</b> : ${dateFinished},
                                                <b>Key Duties</b> : ${keyDuties},
                                                <b>Employment Level</b> : ${employmentLevels.employmentLevel},
                                                <b>Employer</b> : ${employerName},
                                                <b>Verified</b> : ${verified},
                                                <b>How Verified</b> : ${howVerified},
                                            </div>

                                            <div class="tools action-buttons">
                                                <a href="#" class="red">
                                                    <i class="ace-icon fa fa-times bigger-125"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </s:iterator>

                                </div><!-- /.col -->


                            </div><!-- /.row -->

                            <div class="space-12"></div>

                            <div class="center">
                                <form action="AddExperience" method="POST">
                                    <h3>Add new experience</h3>
                                    <div class="profile-info-row">

                                        <div class="profile-info-name"> Job Title </div>
                                        <div class="profile-info-value">
                                            <s:select headerKey="-1" headerValue="Select Job Title"
                                                      list="jobTitles"
                                                      name="newExperiences.jobTitles.idJobTitles"
                                                      listKey="idJobTitles"
                                                      listValue="jobTitle"
                                                      value="newExperiences.jobTitles.idJobTitles">
                                            </s:select>
                                        </div>

                                        <div class="profile-info-name"> Employment Level </div>
                                        <div class="profile-info-value">
                                            <s:select headerKey="-1" headerValue="Select Employment Level"
                                                      list="employmentLevels"
                                                      name="newExperiences.employmentLevels.idLevelsOfEmployment"
                                                      listKey="idLevelsOfEmployment"
                                                      listValue="employmentLevel"
                                                      value="newExperiences.employmentLevels.idLevelsOfEmployment">
                                            </s:select>
                                        </div>

                                        <div class="profile-info-name"> Date Started </div>
                                        <div class="profile-info-value">                                            
                                            <s:hidden name="newExperiences.dateStarted" id="newExperiences.dateStarted" />
                                        </div>

                                        <div class="profile-info-name"> Date Finished </div>
                                        <div class="profile-info-value">                                            
                                            <s:hidden name="newExperiences.dateFinished" id="newExperiences.dateFinished" />
                                        </div>

                                        <s:hidden name="newExperiences.persons.idUser" value="%{person.idUser}" />
                                        <div class="profile-info-name"> Other Job Title(s) </div>
                                        <div class="profile-info-value">
                                            <span>
                                                <s:textfield name="newExperiences.otherJobTitle" id="newExperiences.otherJobTitle" />
                                            </span>
                                        </div>
                                    </div>

                                    <div class="profile-info-row">
                                        <div class="profile-info-name"> Key Duties </div>
                                        <div class="profile-info-value">
                                            <span><s:textarea name="newExperiences.keyDuties" id="newExperiences.keyDuties" /></span>
                                        </div>
                                    </div>
                                    <div class="profile-info-row">

                                        <div class="profile-info-name"> Employer Name </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newExperiences.employerName" id="newExperiences.employerName" /></span>
                                        </div>
                                        <div class="profile-info-name"> Verified </div>
                                        <div class="profile-info-value">
                                            <span>
                                                <s:radio name="newExperiences.verified" id="newExperiences.verified" list="#{'1':'Yes','2':'No'}" value="1" />
                                            </span>
                                        </div>
                                        <div class="profile-info-name"> How Verified </div>
                                        <div class="profile-info-value">
                                            <span><s:textfield name="newExperiences.howVerified" id="newExperiences.howVerified" /></span>
                                        </div>
                                    </div> 
                                    <button type="submit" class="btn btn-sm btn-primary btn-white btn-round"> 
                                        <span class="bigger-110">Add Experience</span>
                                        <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                    </button>
                                </form>
                            </div> 
                        </div><!-- /#feed -->


                        <div id="friends" class="tab-pane">
                            <form action="SaveJobPreferences" method="POST">
                                <s:checkboxlist id="selectedJobTitles" list="jobTitles" listKey="idJobTitles" listValue="jobTitle" name="selectedJobTitles" />                                    

                                <button type="submit" class="btn btn-sm btn-primary btn-white btn-round"> 
                                    <span class="bigger-110">Update Job Preferences</span>
                                    <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                </button>
                            </form>
                        </div><!-- /#friends -->

                        <div id="pictures" class="tab-pane">
                            <ul class="ace-thumbnails">
                                <li>
                                    <a href="#" data-rel="colorbox">
                                        <img alt="150x150" src="template/assets/images/gallery/thumb-1.jpg" />
                                        <div class="text">
                                            <div class="inner">Sample Caption on Hover</div>
                                        </div>
                                    </a>

                                    <div class="tools tools-bottom">
                                        <a href="#">
                                            <i class="ace-icon fa fa-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-paperclip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-times red"></i>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <a href="#" data-rel="colorbox">
                                        <img alt="150x150" src="template/assets/images/gallery/thumb-2.jpg" />
                                        <div class="text">
                                            <div class="inner">Sample Caption on Hover</div>
                                        </div>
                                    </a>

                                    <div class="tools tools-bottom">
                                        <a href="#">
                                            <i class="ace-icon fa fa-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-paperclip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-times red"></i>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <a href="#" data-rel="colorbox">
                                        <img alt="150x150" src="template/assets/images/gallery/thumb-3.jpg" />
                                        <div class="text">
                                            <div class="inner">Sample Caption on Hover</div>
                                        </div>
                                    </a>

                                    <div class="tools tools-bottom">
                                        <a href="#">
                                            <i class="ace-icon fa fa-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-paperclip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-times red"></i>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <a href="#" data-rel="colorbox">
                                        <img alt="150x150" src="template/assets/images/gallery/thumb-4.jpg" />
                                        <div class="text">
                                            <div class="inner">Sample Caption on Hover</div>
                                        </div>
                                    </a>

                                    <div class="tools tools-bottom">
                                        <a href="#">
                                            <i class="ace-icon fa fa-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-paperclip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-times red"></i>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <a href="#" data-rel="colorbox">
                                        <img alt="150x150" src="template/assets/images/gallery/thumb-5.jpg" />
                                        <div class="text">
                                            <div class="inner">Sample Caption on Hover</div>
                                        </div>
                                    </a>

                                    <div class="tools tools-bottom">
                                        <a href="#">
                                            <i class="ace-icon fa fa-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-paperclip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-times red"></i>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <a href="#" data-rel="colorbox">
                                        <img alt="150x150" src="template/assets/images/gallery/thumb-6.jpg" />
                                        <div class="text">
                                            <div class="inner">Sample Caption on Hover</div>
                                        </div>
                                    </a>

                                    <div class="tools tools-bottom">
                                        <a href="#">
                                            <i class="ace-icon fa fa-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-paperclip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-times red"></i>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <a href="#" data-rel="colorbox">
                                        <img alt="150x150" src="template/assets/images/gallery/thumb-1.jpg" />
                                        <div class="text">
                                            <div class="inner">Sample Caption on Hover</div>
                                        </div>
                                    </a>

                                    <div class="tools tools-bottom">
                                        <a href="#">
                                            <i class="ace-icon fa fa-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-paperclip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-times red"></i>
                                        </a>
                                    </div>
                                </li>

                                <li>
                                    <a href="#" data-rel="colorbox">
                                        <img alt="150x150" src="template/assets/images/gallery/thumb-2.jpg" />
                                        <div class="text">
                                            <div class="inner">Sample Caption on Hover</div>
                                        </div>
                                    </a>

                                    <div class="tools tools-bottom">
                                        <a href="#">
                                            <i class="ace-icon fa fa-link"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-paperclip"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-pencil"></i>
                                        </a>

                                        <a href="#">
                                            <i class="ace-icon fa fa-times red"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- /#pictures -->
                    </div>
                </div>
            </div>
        </div>

        <!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->
</div><!-- /.row -->


<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {

        //editables on first profile page
        $.fn.editable.defaults.mode = 'inline';
        $.fn.editableform.loading = "<div class='editableform-loading'><i class='ace-icon fa fa-spinner fa-spin fa-2x light-blue'></i></div>";
        $.fn.editableform.buttons = '<button type="submit" class="btn btn-info editable-submit"><i class="ace-icon fa fa-check"></i></button>' +
                '<button type="button" class="btn editable-cancel"><i class="ace-icon fa fa-times"></i></button>';

        //editables 

        //text editable
        $('#username')
                .editable({
                    type: 'text',
                    name: 'username'
                });



        //select2 editable
        var countries = [];
        $.each({"CA": "Canada", "IN": "India", "NL": "Netherlands", "TR": "Turkey", "US": "United States"}, function (k, v) {
            countries.push({id: k, text: v});
        });

        var cities = [];
        cities["CA"] = [];
        $.each(["Toronto", "Ottawa", "Calgary", "Vancouver"], function (k, v) {
            cities["CA"].push({id: v, text: v});
        });
        cities["IN"] = [];
        $.each(["Delhi", "Mumbai", "Bangalore"], function (k, v) {
            cities["IN"].push({id: v, text: v});
        });
        cities["NL"] = [];
        $.each(["Amsterdam", "Rotterdam", "The Hague"], function (k, v) {
            cities["NL"].push({id: v, text: v});
        });
        cities["TR"] = [];
        $.each(["Ankara", "Istanbul", "Izmir"], function (k, v) {
            cities["TR"].push({id: v, text: v});
        });
        cities["US"] = [];
        $.each(["New York", "Miami", "Los Angeles", "Chicago", "Wysconsin"], function (k, v) {
            cities["US"].push({id: v, text: v});
        });

        var currentValue = "NL";
        $('#country').editable({
            type: 'select2',
            value: 'NL',
            //onblur:'ignore',
            source: countries,
            select2: {
                'width': 140
            },
            success: function (response, newValue) {
                if (currentValue == newValue)
                    return;
                currentValue = newValue;

                var new_source = (!newValue || newValue == "") ? [] : cities[newValue];

                //the destroy method is causing errors in x-editable v1.4.6+
                //it worked fine in v1.4.5
                /**			
                 $('#city').editable('destroy').editable({
                 type: 'select2',
                 source: new_source
                 }).editable('setValue', null);
                 */

                //so we remove it altogether and create a new element
                var city = $('#city').removeAttr('id').get(0);
                $(city).clone().attr('id', 'city').text('Select City').editable({
                    type: 'select2',
                    value: null,
                    //onblur:'ignore',
                    source: new_source,
                    select2: {
                        'width': 140
                    }
                }).insertAfter(city);//insert it after previous instance
                $(city).remove();//remove previous instance

            }
        });

        $('#city').editable({
            type: 'select2',
            value: 'Amsterdam',
            //onblur:'ignore',
            source: cities[currentValue],
            select2: {
                'width': 140
            }
        });



        //custom date editable
        $('#signup').editable({
            type: 'adate',
            date: {
                //datepicker plugin options
                format: 'yyyy/mm/dd',
                viewformat: 'yyyy/mm/dd',
                weekStart: 1

                        //,nativeUI: true//if true and browser support input[type=date], native browser control will be used
                        //,format: 'yyyy-mm-dd',
                        //viewformat: 'yyyy-mm-dd'
            }
        })

        $('#age').editable({
            type: 'spinner',
            name: 'age',
            spinner: {
                min: 16,
                max: 99,
                step: 1,
                on_sides: true
                        //,nativeUI: true//if true and browser support input[type=number], native browser control will be used
            }
        });


        $('#login').editable({
            type: 'slider',
            name: 'login',
            slider: {
                min: 1,
                max: 50,
                width: 100
                        //,nativeUI: true//if true and browser support input[type=range], native browser control will be used
            },
            success: function (response, newValue) {
                if (parseInt(newValue) == 1)
                    $(this).html(newValue + " hour ago");
                else
                    $(this).html(newValue + " hours ago");
            }
        });

        $('#about').editable({
            mode: 'inline',
            type: 'wysiwyg',
            name: 'about',
            wysiwyg: {
                //css : {'max-width':'300px'}
            },
            success: function (response, newValue) {
            }
        });



        // *** editable avatar *** //
        try {//ie8 throws some harmless exceptions, so let's catch'em

            //first let's add a fake appendChild method for Image element for browsers that have a problem with this
            //because editable plugin calls appendChild, and it causes errors on IE at unpredicted points
            try {
                document.createElement('IMG').appendChild(document.createElement('B'));
            } catch (e) {
                Image.prototype.appendChild = function (el) {}
            }

            var last_gritter
            $('#avatar').editable({
                type: 'image',
                name: 'avatar',
                value: null,
                //onblur: 'ignore',  //don't reset or hide editable onblur?!
                image: {
                    //specify ace file input plugin's options here
                    btn_choose: 'Change Avatar',
                    droppable: true,
                    maxSize: 110000, //~100Kb

                    //and a few extra ones here
                    name: 'avatar', //put the field name here as well, will be used inside the custom plugin
                    on_error: function (error_type) {//on_error function will be called when the selected file has a problem
                        if (last_gritter)
                            $.gritter.remove(last_gritter);
                        if (error_type == 1) {//file format error
                            last_gritter = $.gritter.add({
                                title: 'File is not an image!',
                                text: 'Please choose a jpg|gif|png image!',
                                class_name: 'gritter-error gritter-center'
                            });
                        } else if (error_type == 2) {//file size rror
                            last_gritter = $.gritter.add({
                                title: 'File too big!',
                                text: 'Image size should not exceed 100Kb!',
                                class_name: 'gritter-error gritter-center'
                            });
                        } else {//other error
                        }
                    },
                    on_success: function () {
                        $.gritter.removeAll();
                    }
                },
                url: function (params) {
                    // ***UPDATE AVATAR HERE*** //
                    //for a working upload example you can replace the contents of this function with 
                    //examples/profile-avatar-update.js

                    var deferred = new $.Deferred

                    var value = $('#avatar').next().find('input[type=hidden]:eq(0)').val();
                    if (!value || value.length == 0) {
                        deferred.resolve();
                        return deferred.promise();
                    }


                    //dummy upload
                    setTimeout(function () {
                        if ("FileReader" in window) {
                            //for browsers that have a thumbnail of selected image
                            var thumb = $('#avatar').next().find('img').data('thumb');
                            if (thumb)
                                $('#avatar').get(0).src = thumb;
                        }

                        deferred.resolve({'status': 'OK'});

                        if (last_gritter)
                            $.gritter.remove(last_gritter);
                        last_gritter = $.gritter.add({
                            title: 'Avatar Updated!',
                            text: 'Uploading to server can be easily implemented. A working example is included with the template.',
                            class_name: 'gritter-info gritter-center'
                        });

                    }, parseInt(Math.random() * 800 + 800))

                    return deferred.promise();

                    // ***END OF UPDATE AVATAR HERE*** //
                },
                success: function (response, newValue) {
                }
            })
        } catch (e) {
        }

        /**
         //let's display edit mode by default?
         var blank_image = true;//somehow you determine if image is initially blank or not, or you just want to display file input at first
         if(blank_image) {
         $('#avatar').editable('show').on('hidden', function(e, reason) {
         if(reason == 'onblur') {
         $('#avatar').editable('show');
         return;
         }
         $('#avatar').off('hidden');
         })
         }
         */

        //another option is using modals
        $('#avatar2').on('click', function () {
            var modal =
                    '<div class="modal fade">\
                          <div class="modal-dialog">\
                           <div class="modal-content">\
                                <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>\
                                        <h4 class="blue">Change Avatar</h4>\
                                </div>\
                                \
                                <form class="no-margin">\
                                 <div class="modal-body">\
                                        <div class="space-4"></div>\
                                        <div style="width:75%;margin-left:12%;"><input type="file" name="file-input" /></div>\
                                 </div>\
                                \
                                 <div class="modal-footer center">\
                                        <button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> Submit</button>\
                                        <button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>\
                                 </div>\
                                </form>\
                          </div>\
                         </div>\
                        </div>';


            var modal = $(modal);
            modal.modal("show").on("hidden", function () {
                modal.remove();
            });

            var working = false;

            var form = modal.find('form:eq(0)');
            var file = form.find('input[type=file]').eq(0);
            file.ace_file_input({
                style: 'well',
                btn_choose: 'Click to choose new avatar',
                btn_change: null,
                no_icon: 'ace-icon fa fa-picture-o',
                thumbnail: 'small',
                before_remove: function () {
                    //don't remove/reset files while being uploaded
                    return !working;
                },
                allowExt: ['jpg', 'jpeg', 'png', 'gif'],
                allowMime: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
            });

            form.on('submit', function () {
                if (!file.data('ace_input_files'))
                    return false;

                file.ace_file_input('disable');
                form.find('button').attr('disabled', 'disabled');
                form.find('.modal-body').append("<div class='center'><i class='ace-icon fa fa-spinner fa-spin bigger-150 orange'></i></div>");

                var deferred = new $.Deferred;
                working = true;
                deferred.done(function () {
                    form.find('button').removeAttr('disabled');
                    form.find('input[type=file]').ace_file_input('enable');
                    form.find('.modal-body > :last-child').remove();

                    modal.modal("hide");

                    var thumb = file.next().find('img').data('thumb');
                    if (thumb)
                        $('#avatar2').get(0).src = thumb;

                    working = false;
                });


                setTimeout(function () {
                    deferred.resolve();
                }, parseInt(Math.random() * 800 + 800));

                return false;
            });

        });



        //////////////////////////////
        $('#profile-feed-1').ace_scroll({
            height: '250px',
            mouseWheelLock: true,
            alwaysVisible: true
        });

        $('a[ data-original-title]').tooltip();

        $('.easy-pie-chart.percentage').each(function () {
            var barColor = $(this).data('color') || '#555';
            var trackColor = '#E2E2E2';
            var size = parseInt($(this).data('size')) || 72;
            $(this).easyPieChart({
                barColor: barColor,
                trackColor: trackColor,
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: parseInt(size / 10),
                animate: false,
                size: size
            }).css('color', barColor);
        });

        ///////////////////////////////////////////

        //right & left position
        //show the user info on right or left depending on its position
        $('#user-profile-2 .memberdiv').on('mouseenter touchstart', function () {
            var $this = $(this);
            var $parent = $this.closest('.tab-pane');

            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $this.offset();
            var w2 = $this.width();

            var place = 'left';
            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
                place = 'right';

            $this.find('.popover').removeClass('right left').addClass(place);
        }).on('click', function (e) {
            e.preventDefault();
        });


        ///////////////////////////////////////////
        $('#user-profile-3')
                .find('input[type=file]').ace_file_input({
            style: 'well',
            btn_choose: 'Change avatar',
            btn_change: null,
            no_icon: 'ace-icon fa fa-picture-o',
            thumbnail: 'large',
            droppable: true,
            allowExt: ['jpg', 'jpeg', 'png', 'gif'],
            allowMime: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
        })
                .end().find('button[type=reset]').on(ace.click_event, function () {
            $('#user-profile-3 input[type=file]').ace_file_input('reset_input');
        })
                .end().find('.date-picker').datepicker().next().on(ace.click_event, function () {
            $(this).prev().focus();
        })
        $('.input-mask-phone').mask('(999) 999-9999');

        $('#user-profile-3').find('input[type=file]').ace_file_input('show_file_list', [{type: 'image', name: $('#avatar').attr('src')}]);


        ////////////////////
        //change profile
        $('[data-toggle="buttons"] .btn').on('click', function (e) {
            var target = $(this).find('input[type=radio]');
            var which = parseInt(target.val());
            $('.user-profile').parent().addClass('hide');
            $('#user-profile-' + which).parent().removeClass('hide');
        });



        /////////////////////////////////////
        $(document).one('ajaxloadstart.page', function (e) {
            //in ajax mode, remove remaining elements before leaving page
            try {
                $('.editable').editable('destroy');
            } catch (e) {
            }
            $('[class*=select2]').remove();
        });
    });
</script>