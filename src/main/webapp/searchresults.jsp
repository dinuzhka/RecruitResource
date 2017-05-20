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
    <h1>Search Results </h1>
</div><!-- /.page-header -->

<div class="row">
    <div class="col-xs-12">

        <div>
            <div class="row search-page" id="search-page-1">
                <div class="col-xs-12">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3">
                            <div class="search-area well well-sm">
                                <div class="search-filter-header bg-primary">
                                    <h5 class="smaller no-margin-bottom">
                                        <i class="ace-icon fa fa-sliders light-green bigger-130"></i>&nbsp; Refine your Search
                                    </h5>
                                </div>

                                <div class="space-10"></div>

                                <form>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-11 col-md-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="keywords" placeholder="Look within results" />
                                                <div class="input-group-btn">
                                                    <button type="button" class="btn btn-default no-border btn-sm">
                                                        <i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                                <div class="hr hr-dotted"></div>

                                <h4 class="blue smaller">
                                    <i class="fa fa-tags"></i>
                                    Category
                                </h4>

                                <div class="tree-container">
                                    <ul id="cat-tree"></ul>
                                </div>

                                <div class="hr hr-dotted"></div>

                                <h4 class="blue smaller">
                                    <i class="fa fa-map-marker light-orange bigger-110"></i>
                                    Location
                                </h4>

                                <div>
                                    <select multiple="" name="state" class="select2 tag-input-style" data-placeholder="Click to Choose...">
                                        <option value="">&nbsp;</option>
                                        <option value="AL">Alabama</option>
                                        <option value="AK">Alaska</option>
                                        <option value="AZ">Arizona</option>
                                        <option value="AR">Arkansas</option>
                                        <option value="CA">California</option>
                                        <option value="CO">Colorado</option>
                                        <option value="CT">Connecticut</option>
                                        <option value="DE">Delaware</option>
                                        <option value="FL">Florida</option>
                                        <option value="GA">Georgia</option>
                                        <option value="HI">Hawaii</option>
                                        <option value="ID">Idaho</option>
                                        <option value="IL">Illinois</option>
                                        <option value="IN">Indiana</option>
                                        <option value="IA">Iowa</option>
                                        <option value="KS">Kansas</option>
                                        <option value="KY">Kentucky</option>
                                        <option value="LA">Louisiana</option>
                                        <option value="ME">Maine</option>
                                        <option value="MD">Maryland</option>
                                        <option value="MA">Massachusetts</option>
                                        <option value="MI">Michigan</option>
                                        <option value="MN">Minnesota</option>
                                        <option value="MS">Mississippi</option>
                                        <option value="MO">Missouri</option>
                                        <option value="MT">Montana</option>
                                        <option value="NE">Nebraska</option>
                                        <option value="NV">Nevada</option>
                                        <option value="NH">New Hampshire</option>
                                        <option value="NJ">New Jersey</option>
                                        <option value="NM">New Mexico</option>
                                        <option value="NY">New York</option>
                                        <option value="NC">North Carolina</option>
                                        <option value="ND">North Dakota</option>
                                        <option value="OH">Ohio</option>
                                        <option value="OK">Oklahoma</option>
                                        <option value="OR">Oregon</option>
                                        <option value="PA">Pennsylvania</option>
                                        <option value="RI">Rhode Island</option>
                                        <option value="SC">South Carolina</option>
                                        <option value="SD">South Dakota</option>
                                        <option value="TN">Tennessee</option>
                                        <option value="TX">Texas</option>
                                        <option value="UT">Utah</option>
                                        <option value="VT">Vermont</option>
                                        <option value="VA">Virginia</option>
                                        <option value="WA">Washington</option>
                                        <option value="WV">West Virginia</option>
                                        <option value="WI">Wisconsin</option>
                                        <option value="WY">Wyoming</option>
                                    </select>
                                </div>

                                <div class="hr hr-dotted"></div>

                                <h4 class="blue smaller">
                                    <i class="fa fa-location-arrow light-grey bigger-110"></i>
                                    Distance
                                </h4>

                                <div class="search-filter-element">
                                    <span>within</span>
                                    &nbsp;
                                    <div id="slider-range" class="inline"></div>
                                    &nbsp;
                                    <span>miles</span>
                                </div>

                                <div class="hr hr-dotted hr-24"></div>

                                <div class="text-center">
                                    <button type="button" class="btn btn-default btn-round btn-sm btn-white">
                                        <i class="ace-icon fa fa-remove red2"></i>
                                        Reset
                                    </button>

                                    <button type="button" class="btn btn-default btn-round btn-white">
                                        <i class="ace-icon fa fa-refresh green"></i>
                                        Update
                                    </button>
                                </div>

                                <div class="space-4"></div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-9">
                            <s:iterator value="searchResult">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="media search-media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" data-src="holder.js/72x72" />
                                                </a>
                                            </div>

                                            <div class="media-body">
                                                <div>
                                                    <h4 class="media-heading">
                                                        <a href="#" class="blue">${title} ${firstName} ${lastName}</a>
                                                    </h4>
                                                </div>
                                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis ...</p>

                                                <div class="search-actions text-center">
                                                    <span class="text-info">$</span>

                                                    <span class="blue bolder bigger-150">300</span>

                                                    monthly
                                                    <div class="action-buttons bigger-125">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-phone green"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-heart red"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-star orange2"></i>
                                                        </a>
                                                    </div>
                                                    <a class="search-btn-action btn btn-sm btn-block btn-info">Book it!</a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </s:iterator>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="hide">
            <div class="row search-page" id="search-page-2">
                <div class="col-xs-12 col-md-10 col-md-offset-1">
                    <div class="search-area well no-margin-bottom">
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="search" value="Hello World" />
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-primary btn-sm">
                                                <i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <div class="space space-6"></div>
                        <span class="grey">About 263,000,000 results (0.74 seconds)</span>
                    </div>

                    <div class="search-results">
                        <div class="search-result">
                            <h5 class="search-title">
                                <a href="#">&quot;Hello, World!&quot; - Wikipedia, the free encyclopedia</a>
                            </h5>
                            <a class="text-success" href="#">en.wikipedia.org</a>

                            <p class="search-content">
                                A &quot;
                                <b>Hello</b>
                                ,
                                <b>World</b>
                                !&quot; program is a computer program that outputs &quot;
                                <b>Hello</b>
                                ,
                                <b>World</b>!&quot; (or some variant thereof) on a display device. Because it is typically one of the ...
                            </p>
                        </div>

                        <div class="search-result">
                            <h5 class="search-title">
                                <a href="#">Hello World! - GNU Project</a>
                            </h5>
                            <a class="text-success" href="#">www.gnu.org</a>

                            <p class="search-content">
                                <b>Hello World</b>
                                ! How the way people code “
                                <b>Hello World</b>” varies depending on their age and job ...
                            </p>
                        </div>

                        <div class="search-result">
                            <h5 class="search-title">
                                <a href="#">HelloWorld.java - Introduction to Programming in Java</a>
                            </h5>
                            <a class="text-success" href="#">introcs.cs.princeton.edu</a>

                            <p class="search-content">
                                <b>HelloWorld</b>
                                code in Java. ...
                                <b>HelloWorld</b>
                                .java. Below is the syntax highlighted version of
                                <b>HelloWorld</b>.java from ...
                            </p>
                        </div>

                        <div class="search-result">
                            <h5 class="search-title">
                                <a href="#">Hello, World! - Learn Python - Free Interactive Python Tutorial</a>
                            </h5>
                            <a class="text-success" href="#">www.learnpython.org</a>

                            <p class="search-content">
                                <b>Hello</b>
                                ,
                                <b>World</b>! Python is a very simple language, and has a very straightforward syntax. It encourages programmers to program without boilerplate (prepared) ...
                            </p>
                        </div>

                        <div class="search-result">
                            <h5 class="search-title">
                                <a href="#">Hello World · GitHub Guides</a>
                            </h5>
                            <a class="text-success" href="#">guides.github.com</a>

                            <p class="search-content">
                                The
                                <b>Hello World</b>
                                project is a time-honored tradition in computer programming. It is a simple exercise that gets you started when learning something new. Let's get ...
                            </p>
                        </div>
                    </div>

                    <div class="search-area well well-sm text-center">
                        <ul class="pagination">
                            <li class="disabled">
                                <a href="#">
                                    <i class="ace-icon fa fa-angle-double-left"></i>
                                </a>
                            </li>

                            <li class="active">
                                <a href="#">1</a>
                            </li>

                            <li>
                                <a href="#">2</a>
                            </li>

                            <li>
                                <a href="#">3</a>
                            </li>

                            <li>
                                <a href="#">4</a>
                            </li>

                            <li>
                                <a href="#">5</a>
                            </li>

                            <li>
                                <a href="#">
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->
</div><!-- /.row -->
