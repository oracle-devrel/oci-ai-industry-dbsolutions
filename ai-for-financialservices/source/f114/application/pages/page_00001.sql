prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'AI for Financial Services'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'setInterval("jQuery(''#static_1'').trigger(''apexrefresh'');", 20000);',
'setInterval("jQuery(''#static_5'').trigger(''apexrefresh'');", 20000); ',
'*/',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.video-container {',
'  position: relative;',
'  padding-bottom: 56.25%; /* 16:9 */',
'  height: 0;',
'}',
'.video-container iframe {',
'  position: absolute;',
'  top: 0;',
'  left: 0;',
'  width: 100%;',
'  height: 100%;',
'}',
'',
'/*',
'#t_Body_content {',
'',
'background: url(#APP_FILES#OCPC-2k.jpg) no-repeat center center fixed;  ',
'background-size: cover !important;',
'',
'}',
'.t-Header-branding { ',
'    display: none;  ',
'}',
'.t-Footer {',
'  display: none',
'}',
'*/'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62244795433085092)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15847021341767568)
,p_plug_name=>'OLD'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>160
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6839269122740293)
,p_plug_name=>'Public Home User'
,p_parent_plug_id=>wwv_flow_imp.id(15847021341767568)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--',
'    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" type="text/css" />',
'<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" /> ',
'-->',
'<link href="#APP_FILES#templates/replace-this/css/styles.css" rel="stylesheet" />',
'<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />',
'<link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />',
' ',
'<script src="#APP_FILES#oda/settings#MIN#.js"></script>',
'<script src="#APP_FILES#oda/web-sdk.js" onload="initSdk(''Bots'')"></script>',
'<link rel="stylesheet" href="#APP_FILES#oda/redwood-base-madhu.css" > ',
' ',
' <style>',
'    @keyframes shine {',
'  0% {',
'    opacity: 0.5;',
'    transform: scale(1);',
'  }',
'  50% {',
'    opacity: 1;',
'    /* transform: scale(1.1); */',
'  }',
'  100% {',
'    opacity: 0.5;',
'    transform: scale(1);',
'  }',
'}',
'</style>  ',
'',
'<!-- ',
'<link rel="stylesheet" href="#APP_FILES#oda24/style/style.css">',
'<script src="#APP_FILES#oda24/scripts/settings.js" defer></script>',
'<script src="#APP_FILES#oda24/scripts/web-sdk#MIN#.js" onload="initSdk(''Bots'')" defer></script>',
'-->',
'',
'<!-- Navigation-->',
'        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav" ',
'        style="background: radial-gradient(ellipse farthest-corner at right bottom, #FEDB37 0%, #FDB931 8%, #9f7928 30%, #8A6E2F 40%, transparent 80%),radial-gradient(ellipse farthest-corner at left top, #FFFFFF 0%, #FFFFAC 8%, #D1B464 25%, #5d4a1f 6'
||'2.5%, #5d4a1f 100%);">',
'            <div class="container px-4 px-lg-5">',
'                <a class="navbar-brand" href="#page-top" style="color:#4E4139">',
'                    <img src="#APP_FILES#icons/app-icon-512.png" width="48px" height="48px" alt="..." />  AI for Financial Services</a>',
'                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-t'
||'oggler-icon"></span></button>',
'                <div class="collapse navbar-collapse" id="navbarResponsive">',
'                    <ul class="navbar-nav ms-auto my-2 my-lg-0">',
'                        <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:88:&SESSION.::&DEBUG.::::">My Profile</a></li>',
'                        <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::">Open Bank Account</a></li> ',
'                        <!-- <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::">Chat</a></li>  -->',
'                        <li class="nav-item"><a class="nav-link" href="&LOGOUT_URL.">Logout</a></li>',
'                    </ul>',
'                </div>',
'            </div>',
'        </nav>',
'        <!-- Masthead-->',
'        <header class="masthead" style="background: url(''#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/finservbuilding.jpg'');">',
'            <div class="container px-4 px-lg-5 h-100">',
'                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">',
'                    <div class="col-lg-8 align-self-end">',
'                         &nbsp;',
'                        <hr class="divider" />',
'                    </div>',
'                    <div class="col-lg-8 align-self-baseline">',
'                        <p class="text-white-75 mb-5"> Thrive on your technology and data competitive advantage to drive sustainable growth. Rewire to gain more operational efficiency, shift to business model innovation, evolve to meet changing custo'
||unistr('mer needs, and become a people-first financial services institution with Oracle\2019s AI-driven applications and cloud services.</p>'),
'                        <a class="btn btn-primary btn-xl" href="f?p=&APP_ID.:88:&SESSION.::&DEBUG.::::">Update your profile </a>',
'                    </div>',
'                </div>',
'            </div>',
'        </header>',
'        <!-- About-->',
'        <section class="page-section bg-primary" id="about" style="animation: shine 5s infinite;">',
'            <div class="container px-4 px-lg-5">',
'                <div class="row gx-4 gx-lg-5 justify-content-center">',
'                    <div class="col-lg-8 text-center">',
'                        <h2 class="text-white mt-0">We''ve got what you need!</h2>',
'                        <hr class="divider divider-light" />',
'                        <p class="text-white-75 mb-4">Dapibus sapien. Etiam non massa vitae ligula suscipit blandit sed vitae velit. Curabitur mattis massa ac nisl elementum, in egestas dolor iaculis. Cras aliquam sem ipsum, non mollis lectus tincidu'
||'nt et. Praesent mi neque, sollicitudin a nisl at, rhoncus suscipit tellus. Aenean at dapibus nunc</p>',
'                        <a class="btn btn-light btn-xl" href="f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::">Open Bank Account </a>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <!-- Services-->',
'        <section class="page-section" id="services">',
'            <div class="container px-4 px-lg-5">',
'                <h2 class="text-center mt-0">At Your Service</h2>',
'                <hr class="divider" />',
'                <div class="row gx-4 gx-lg-5">',
'                    <div class="col-lg-3 col-md-6 text-center">',
'                        <div class="mt-5">',
'                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>',
'                            <h3 class="h4 mb-2">Internet Banking</h3>',
'                            <p class="text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam!</p>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-3 col-md-6 text-center">',
'                        <div class="mt-5">',
'                            <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>',
'                            <h3 class="h4 mb-2">Best EMI Loans</h3>',
'                            <p class="text-muted mb-0">Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit pariatur.</p>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-3 col-md-6 text-center">',
'                        <div class="mt-5">',
'                            <div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>',
'                            <h3 class="h4 mb-2">Mobile Banking</h3>',
'                            <p class="text-muted mb-0">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore!</p>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-3 col-md-6 text-center">',
'                        <div class="mt-5">',
'                            <div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>',
'                            <h3 class="h4 mb-2">24*7 Support</h3>',
'                            <p class="text-muted mb-0">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni Duis aute irure dolor in reprehenderit</p>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <!-- Portfolio-->',
'        <div id="portfolio">',
'            <div class="container-fluid p-0">',
'                <div class="row g-0">',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/1a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Core Banking</div>',
'                                <div class="project-name">Internet Banking</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/2a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Core Banking</div>',
'                                <div class="project-name">Mobile Banking</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/3a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Premium Cards</div>',
'                                <div class="project-name">Gold Credit Cards</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/4a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Support</div>',
'                                <div class="project-name">24*7 Customer Support</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/5a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Realtime Data</div>',
'                                <div class="project-name">Access your data anytime</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/6a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption p-3">',
'                                <div class="project-category text-white-50">Secure</div>',
'                                <div class="project-name">Highly Secure Banking</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <!-- Call to action-->',
'        <section class="page-section bg-dark text-white">',
'            <div class="container px-4 px-lg-5 text-center">',
'                <h2 class="mb-4">Explore our Internet Banking!</h2>',
'                <a class="btn btn-light btn-xl" href="f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::">My Dashboard</a>',
'            </div>',
'        </section>',
'        <!-- Contact-->',
'        <section class="page-section" id="contact">',
'            <div class="container px-4 px-lg-5">',
'                <div class="row gx-4 gx-lg-5 justify-content-center">',
'                    <div class="col-lg-8 col-xl-6 text-center">',
'                        <h2 class="mt-0">Let''s Get In Touch!</h2>',
'                        <hr class="divider" />',
'                        <p class="text-muted mb-5">Nam egestas sapien neque, sed sodales tellus tincidunt vel. Nullam varius odio at arcu interdum dignissim. Pellentesque id convallis ipsum</p>',
'                    </div>',
'                </div> ',
'                <div class="row gx-4 gx-lg-5 justify-content-center">',
'                    <div class="col-lg-4 text-center mb-5 mb-lg-0">',
'                        <i class="bi-phone fs-2 mb-3 text-muted"></i>',
'                        <div>+1.800.633.0738</div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <!-- Footer-->',
'',
'        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>',
'<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>',
'<script src="#APP_FILES#templates/replace-this/js/scripts.js"></script>'))
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'4:null'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7401150140343565)
,p_plug_name=>'Logout'
,p_parent_plug_id=>wwv_flow_imp.id(15847021341767568)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<center><a href=''&LOGOUT_URL.''>Logout & Login</a></center>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7402319991343577)
,p_plug_name=>'Bank Customer'
,p_parent_plug_id=>wwv_flow_imp.id(15847021341767568)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--',
'    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" type="text/css" />',
'<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" /> ',
'-->',
'<link href="#APP_FILES#templates/replace-this/css/styles.css" rel="stylesheet" />',
'<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />',
'<link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />',
'',
'<!-- Navigation-->',
'<!-- style="background: rgb(2,0,36); background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(111,44,17,1) 58%, rgba(0,196,255,1) 100%);" -->',
'        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav" style="background: radial-gradient(ellipse farthest-corner at right bottom, #FEDB37 0%, #FDB931 8%, #9f7928 30%, #8A6E2F 40%, transparent 80%),radial-gradient(ellip'
||'se farthest-corner at left top, #FFFFFF 0%, #FFFFAC 8%, #D1B464 25%, #5d4a1f 62.5%, #5d4a1f 100%);">',
'            <div class="container px-4 px-lg-5">',
'                <a class="navbar-brand" href="#page-top" style="color:white">',
'                    <img src="#APP_FILES#icons/app-icon-512.png" width="48px" height="48px" alt="..." />  AI for Financial Services</a>',
'                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-t'
||'oggler-icon"></span></button>',
'                <div class="collapse navbar-collapse" id="navbarResponsive">',
'                    <ul class="navbar-nav ms-auto my-2 my-lg-0">',
'                        <li class="nav-item"><a class="nav-link"  style="color:white" href="f?p=&APP_ID.:88:&SESSION.::&DEBUG.::::">My Profile</a></li> ',
'                        <li class="nav-item"><a class="nav-link"  style="color:white" href="f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::">Cash Withdrawal</a></li>',
'                        <li class="nav-item"><a class="nav-link"  style="color:white" href="f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::">Cheque Deposit</a></li>',
'                        <li class="nav-item"><a class="nav-link"  style="color:white" href="f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::">Online Shopping</a></li>',
'                        <li class="nav-item"><a class="nav-link"  style="color:white" href="f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::">Funds Transfer</a></li>',
'                        <li class="nav-item"><a class="nav-link"  style="color:white" href="f?p=&APP_ID.:85:&SESSION.::&DEBUG.::::">Bank Statement</a></li>',
'                        <li class="nav-item"><a class="nav-link"  style="color:white" href="&LOGOUT_URL.">Logout</a></li>',
'                    </ul>',
'                </div>',
'            </div>',
'        </nav>',
'        <!-- Masthead style="background: url(''#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/cardswipe.jpg'');"-->',
'        <!-- About ',
'        <header class="masthead" >',
'            <div class="container px-4 px-lg-5 h-100">',
'                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">',
'                    <div class="col-lg-8 align-self-end">',
'                         &nbsp;',
'                        <hr class="divider" />',
'                    </div>',
'                    <div class="col-lg-8 align-self-baseline">',
'                        <p class="text-white-75 mb-5">Proin sed bibendum dui. Maecenas at eros sed metus imperdiet gravida. Ut vehicula et orci in sollicitudin. Nulla hendrerit iaculis vulputate. Suspendisse ac magna pulvinar, pellentesque sem fringi'
||'lla,</p>',
'                        <a class="btn btn-primary btn-xl" href="f?p=&APP_ID.:52:&SESSION.::&DEBUG.::::">Net Banking</a>',
'                    </div>',
'                </div>',
'            </div>',
'        </header>',
'        -->',
'        <!-- About-->',
'        <section class="page-section bg-primary" id="about">',
'            <div class="container px-4 px-lg-5">',
'                <div class="row gx-4 gx-lg-5 justify-content-center">',
'                    <div class="col-lg-8 text-center">',
'                        <h2 class="text-white mt-0">We''ve got what you need!</h2>',
'                        <hr class="divider divider-light" />',
'                        <p class="text-white-75 mb-4">Dapibus sapien. Etiam non massa vitae ligula suscipit blandit sed vitae velit. Curabitur mattis massa ac nisl elementum, in egestas dolor iaculis. Cras aliquam sem ipsum, non mollis lectus tincidu'
||'nt et. Praesent mi neque, sollicitudin a nisl at, rhoncus suscipit tellus. Aenean at dapibus nunc</p>',
'                        <a class="btn btn-light btn-xl" href="f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::">Shopping</a>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <!-- Services-->',
'        <section class="page-section" id="services">',
'            <div class="container px-4 px-lg-5">',
'                <h2 class="text-center mt-0">At Your Service</h2>',
'                <hr class="divider" />',
'                <div class="row gx-4 gx-lg-5">',
'                    <div class="col-lg-3 col-md-6 text-center">',
'                        <div class="mt-5">',
'                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>',
'                            <h3 class="h4 mb-2">Internet Banking</h3>',
'                            <p class="text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam!</p>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-3 col-md-6 text-center">',
'                        <div class="mt-5">',
'                            <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>',
'                            <h3 class="h4 mb-2">Best EMI Loans</h3>',
'                            <p class="text-muted mb-0">Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit pariatur.</p>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-3 col-md-6 text-center">',
'                        <div class="mt-5">',
'                            <div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>',
'                            <h3 class="h4 mb-2">Mobile Banking</h3>',
'                            <p class="text-muted mb-0">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore!</p>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-3 col-md-6 text-center">',
'                        <div class="mt-5">',
'                            <div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>',
'                            <h3 class="h4 mb-2">24*7 Support</h3>',
'                            <p class="text-muted mb-0">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni Duis aute irure dolor in reprehenderit</p>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <!-- Portfolio-->',
'        <div id="portfolio">',
'            <div class="container-fluid p-0">',
'                <div class="row g-0">',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/1a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Core Banking</div>',
'                                <div class="project-name">Internet Banking</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/2a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Core Banking</div>',
'                                <div class="project-name">Mobile Banking</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/3a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Premium Cards</div>',
'                                <div class="project-name">Gold Credit Cards</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/4a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Support</div>',
'                                <div class="project-name">24*7 Customer Support</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/5a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Realtime Data</div>',
'                                <div class="project-name">Access your data anytime</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/6a.jpg" alt="..." />',
'                            <div class="portfolio-box-caption p-3">',
'                                <div class="project-category text-white-50">Secure</div>',
'                                <div class="project-name">Highly Secure Banking</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <!-- Call to action-->',
'        <section class="page-section bg-dark text-white">',
'            <div class="container px-4 px-lg-5 text-center">',
'                <h2 class="mb-4">Explore our Internet Banking!</h2>',
'                <a class="btn btn-light btn-xl" href="f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::">My Dashboard</a>',
'            </div>',
'        </section>',
'        <!-- Contact-->',
'        <section class="page-section" id="contact">',
'            <div class="container px-4 px-lg-5">',
'                <div class="row gx-4 gx-lg-5 justify-content-center">',
'                    <div class="col-lg-8 col-xl-6 text-center">',
'                        <h2 class="mt-0">Let''s Get In Touch!</h2>',
'                        <hr class="divider" />',
'                        <p class="text-muted mb-5">Nam egestas sapien neque, sed sodales tellus tincidunt vel. Nullam varius odio at arcu interdum dignissim. Pellentesque id convallis ipsum</p>',
'                    </div>',
'                </div> ',
'                <div class="row gx-4 gx-lg-5 justify-content-center">',
'                    <div class="col-lg-4 text-center mb-5 mb-lg-0">',
'                        <i class="bi-phone fs-2 mb-3 text-muted"></i>',
'                        <div>+1.800.633.0738</div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <!-- Footer-->',
'',
'        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>',
'<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>',
'<script src="#APP_FILES#templates/replace-this/js/scripts.js"></script>'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'2'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79635869880296923)
,p_plug_name=>'Banker Home'
,p_parent_plug_id=>wwv_flow_imp.id(15847021341767568)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>',
'<!-- Google fonts',
'<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />',
'<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" /> ',
'-->',
'<link href="#APP_FILES#templates/startbootstrap-agency-gh-pages/css/styles.css?id=1" rel="stylesheet" />',
'  ',
'<!-- Navigation-->',
'        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background: rgb(2,0,36);background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(48,45,41,1) 58%, rgba(0,212,255,1) 100%);">',
'            <div class="container">',
'                <a class="navbar-brand" href="#page-top" style="color:#FFD700">',
'                     <img src="#APP_FILES#icons/app-icon-512.png" alt="..." />  ',
'                    AI for Financial Services',
'                    </a> ',
'                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">',
'                    Menu',
'                    <i class="fas fa-bars ms-1"></i>',
'                </button>',
'                <div class="collapse navbar-collapse" id="navbarResponsive">',
'                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">',
'                        <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::">Services</a></li>',
'                        <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::">Core Banking</a></li>',
'                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li> ',
'                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>',
'                        <li class="nav-item"><a class="nav-link" href="&LOGOUT_URL.">Logout</a></li>',
'                    </ul>',
'                </div>',
'            </div>',
'        </nav>',
'        <!-- Masthead-->',
'        <header class="masthead">',
'            <div class="container">',
'                <div class="masthead-subheading">Secure. Real-Time. Intelligent Banking!</div>',
'                <div class="my-3" style=''color:white''>Thrive on your technology and data competitive advantage to drive sustainable growth. Rewire to gain more operational efficiency, shift to business model innovation, evolve to meet changing custom'
||unistr('er needs, and become a people-first financial services institution with Oracle\2019s AI-driven applications and cloud services.</div>'),
'                <a class="btn btn-primary btn-xl text-uppercase" href="f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::">Core Banking - Dashboard</a>',
'                <!-- <a class="btn btn-primary btn-xl text-uppercase" href="f?p=117.:1:&SESSION.::&DEBUG.::::">Healthcare Services</a> -->',
'            </div>',
'        </header>',
'        <!-- Services-->',
'        <section class="page-section" id="services">',
'            <div class="container">',
'                <div class="text-center">',
'                    <h2 class="section-heading text-uppercase">Services</h2>',
'                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>',
'                </div>',
'                <div class="row text-center">',
'                    ',
'                    <div class="col-md-4"><a class="nav-link" href="f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::">',
'                        <span class="fa-stack fa-4x">',
'                            <i class="fas fa-circle fa-stack-2x text-primary"></i>',
'                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>',
'                        </span> ',
'                        <h4 class="nav-item">Fraud Detection</h4>',
'                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>',
'                     </a></div>',
'                   ',
'                    <div class="col-md-4"><a class="nav-link" href="f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::">',
'                        <span class="fa-stack fa-4x">',
'                            <i class="fas fa-circle fa-stack-2x text-primary"></i>',
'                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>',
'                        </span>',
'                        <h4 class="my-3"> Track Money Laundering </h4>',
'                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>',
'                    </a></div>',
'',
'                    <div class="col-md-4"><a class="nav-link" href="f?p=&APP_ID.:64:&SESSION.::&DEBUG.::::">',
'                        <span class="fa-stack fa-4x">',
'                            <i class="fas fa-circle fa-stack-2x text-primary"></i>',
'                            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>',
'                        </span>',
'                        <h4 class="my-3">Business Workflows</h4>',
'                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>',
'                    </a></div>',
'',
'                </div>',
'            </div>',
'        </section>',
'        <!-- Portfolio Grid-->',
'        <section class="page-section bg-light" id="portfolio">',
'            <div class="container">',
'                <div class="text-center">',
'                    <h2 class="section-heading text-uppercase">Core Banking</h2>',
'                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>',
'                </div>',
'                <div class="row">',
'                    <div class="col-lg-4 col-sm-6 mb-4">',
'                        <!-- Portfolio item 1-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/1a.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">PAY</div>',
'                                <div class="portfolio-caption-subheading text-muted">Cards, Bills, Loans</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6 mb-4">',
'                        <!-- Portfolio item 2-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/2a.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">SAVE</div>',
'                                <div class="portfolio-caption-subheading text-muted">Accounts, Deposits</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6 mb-4">',
'                        <!-- Portfolio item 3-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/3a.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">INVEST</div>',
'                                <div class="portfolio-caption-subheading text-muted">Bonds, Mutual Funds</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">',
'                        <!-- Portfolio item 4-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/4a.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">BORROW</div>',
'                                <div class="portfolio-caption-subheading text-muted">Loans, EMI, Mortgage</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">',
'                        <!-- Portfolio item 5-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/5a.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">INSURE</div>',
'                                <div class="portfolio-caption-subheading text-muted">Cars, Health, Business</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <!-- Portfolio item 6-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/6a.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">OFFERS</div>',
'                                <div class="portfolio-caption-subheading text-muted">Healthcare, Retail</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <!-- About-->',
'        <section class="page-section" id="about">',
'            <div class="container">',
'                <div class="text-center">',
'                    <h2 class="section-heading text-uppercase">About</h2>',
'                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>',
'                </div>',
'                <ul class="timeline">',
'                    <li>',
'                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/about/1.jpg" alt="..." /></div>',
'                        <div class="timeline-panel">',
'                            <div class="timeline-heading">',
'                                <h4>1999-2000</h4>',
'                                <h4 class="subheading">Secure Banking with Lockers</h4>',
'                            </div>',
'                            <div class="timeline-body"><p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidun'
||'t et ea quo dolore laudantium consectetur!</p></div>',
'                        </div>',
'                    </li>',
'                    <li class="timeline-inverted">',
'                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/about/2.jpg" alt="..." /></div>',
'                        <div class="timeline-panel">',
'                            <div class="timeline-heading">',
'                                <h4>March 2001</h4>',
'                                <h4 class="subheading">Internet Banking</h4>',
'                            </div>',
'                            <div class="timeline-body"><p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidun'
||'t et ea quo dolore laudantium consectetur!</p></div>',
'                        </div>',
'                    </li>',
'                    <li>',
'                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/about/3.jpg" alt="..." /></div>',
'                        <div class="timeline-panel">',
'                            <div class="timeline-heading">',
'                                <h4>April 2007</h4>',
'                                <h4 class="subheading">Mobile Banking</h4>',
'                            </div>',
'                            <div class="timeline-body"><p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidun'
||'t et ea quo dolore laudantium consectetur!</p></div>',
'                        </div>',
'                    </li>',
'                    <li class="timeline-inverted">',
'                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/about/4.jpg" alt="..." /></div>',
'                        <div class="timeline-panel">',
'                            <div class="timeline-heading">',
'                                <h4>April 2015</h4>',
'                                <h4 class="subheading">Unified Payment Interface</h4>',
'                            </div>',
'                            <div class="timeline-body"><p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidun'
||'t et ea quo dolore laudantium consectetur!</p></div>',
'                        </div>',
'                    </li>',
'                    <li class="timeline-inverted">',
'                        <div class="timeline-image">',
'                            <h4>',
'                                Be Part',
'                                <br />',
'                                Of Our',
'                                <br />',
'                                Story!',
'                            </h4>',
'                        </div>',
'                    </li>',
'                </ul>',
'            </div>',
'        </section>',
'        <!-- Team',
'        <section class="page-section bg-light" id="team">',
'            <div class="container">',
'                <div class="text-center">',
'                    <h2 class="section-heading text-uppercase">Our Amazing Team</h2>',
'                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>',
'                </div>',
'                <div class="row">',
'                    <div class="col-lg-4">',
'                        <div class="team-member">',
'                            <img class="mx-auto rounded-circle" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/team/1.jpg" alt="..." />',
'                            <h4>Parveen Anand</h4>',
'                            <p class="text-muted">Lead Designer</p>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Twitter Profile"><i class="fab fa-twitter"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Facebook Profile"><i class="fab fa-facebook-f"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4">',
'                        <div class="team-member">',
'                            <img class="mx-auto rounded-circle" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/team/2.jpg" alt="..." />',
'                            <h4>Diana Petersen</h4>',
'                            <p class="text-muted">Lead Marketer</p>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Twitter Profile"><i class="fab fa-twitter"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Facebook Profile"><i class="fab fa-facebook-f"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4">',
'                        <div class="team-member">',
'                            <img class="mx-auto rounded-circle" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/team/3.jpg" alt="..." />',
'                            <h4>Larry Parker</h4>',
'                            <p class="text-muted">Lead Developer</p>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Twitter Profile"><i class="fab fa-twitter"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Facebook Profile"><i class="fab fa-facebook-f"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row">',
'                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p><'
||'/div>',
'                </div>',
'            </div>',
'        </section> -->',
'        <!-- Clients-->',
'        <!-- <div class="py-5">',
'            <div class="container">',
'                <div class="row align-items-center">',
'                    <div class="col-md-3 col-sm-6 my-3">',
'                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/logos/microsoft.svg" alt="..." aria-label="Microsoft Logo" /></a>',
'                    </div>',
'                    <div class="col-md-3 col-sm-6 my-3">',
'                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/logos/google.svg" alt="..." aria-label="Google Logo" /></a>',
'                    </div>',
'                    <div class="col-md-3 col-sm-6 my-3">',
'                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/logos/facebook.svg" alt="..." aria-label="Facebook Logo" /></a>',
'                    </div>',
'                    <div class="col-md-3 col-sm-6 my-3">',
'                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/logos/ibm.svg" alt="..." aria-label="IBM Logo" /></a>',
'                    </div>',
'                </div>',
'            </div>',
'        </div> -->',
'        <!-- Contact-->',
'          ',
'        <!-- Portfolio item 1 modal popup-->',
'        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">',
'            <div class="modal-dialog">',
'                <div class="modal-content">',
'                    <div class="close-modal" data-bs-dismiss="modal"><img src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>',
'                    <div class="container">',
'                        <div class="row justify-content-center">',
'                            <div class="col-lg-8">',
'                                <div class="modal-body">',
'                                    <!-- Project details-->',
'                                    <h2 class="text-uppercase">Project Name</h2>',
'                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>',
'                                    <img class="img-fluid d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/1a.jpg" alt="..." />',
'                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita bea'
||'tae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>',
'                                    <ul class="list-inline">',
'                                        <li>',
'                                            <strong>Client:</strong>',
'                                            Threads',
'                                        </li>',
'                                        <li>',
'                                            <strong>Category:</strong>',
'                                            Illustration',
'                                        </li>',
'                                    </ul>',
'                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">',
'                                        <i class="fas fa-xmark me-1"></i>',
'                                        Close Project',
'                                    </button>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <!-- Portfolio item 2 modal popup-->',
'        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">',
'            <div class="modal-dialog">',
'                <div class="modal-content">',
'                    <div class="close-modal" data-bs-dismiss="modal"><img src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>',
'                    <div class="container">',
'                        <div class="row justify-content-center">',
'                            <div class="col-lg-8">',
'                                <div class="modal-body">',
'                                    <!-- Project details-->',
'                                    <h2 class="text-uppercase">Project Name</h2>',
'                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>',
'                                    <img class="img-fluid d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/2a.jpg" alt="..." />',
'                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita bea'
||'tae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>',
'                                    <ul class="list-inline">',
'                                        <li>',
'                                            <strong>Client:</strong>',
'                                            Explore',
'                                        </li>',
'                                        <li>',
'                                            <strong>Category:</strong>',
'                                            Graphic Design',
'                                        </li>',
'                                    </ul>',
'                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">',
'                                        <i class="fas fa-xmark me-1"></i>',
'                                        Close Project',
'                                    </button>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <!-- Portfolio item 3 modal popup-->',
'        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">',
'            <div class="modal-dialog">',
'                <div class="modal-content">',
'                    <div class="close-modal" data-bs-dismiss="modal"><img src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>',
'                    <div class="container">',
'                        <div class="row justify-content-center">',
'                            <div class="col-lg-8">',
'                                <div class="modal-body">',
'                                    <!-- Project details-->',
'                                    <h2 class="text-uppercase">Project Name</h2>',
'                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>',
'                                    <img class="img-fluid d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/3a.jpg" alt="..." />',
'                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita bea'
||'tae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>',
'                                    <ul class="list-inline">',
'                                        <li>',
'                                            <strong>Client:</strong>',
'                                            Finish',
'                                        </li>',
'                                        <li>',
'                                            <strong>Category:</strong>',
'                                            Identity',
'                                        </li>',
'                                    </ul>',
'                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">',
'                                        <i class="fas fa-xmark me-1"></i>',
'                                        Close Project',
'                                    </button>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <!-- Portfolio item 4 modal popup-->',
'        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">',
'            <div class="modal-dialog">',
'                <div class="modal-content">',
'                    <div class="close-modal" data-bs-dismiss="modal"><img src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>',
'                    <div class="container">',
'                        <div class="row justify-content-center">',
'                            <div class="col-lg-8">',
'                                <div class="modal-body"> ',
'                                    <h2 class="text-uppercase">Project Name</h2>',
'                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>',
'                                    <img class="img-fluid d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/4a.jpg" alt="..." />',
'                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita bea'
||'tae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>',
'                                    <ul class="list-inline">',
'                                        <li>',
'                                            <strong>Client:</strong>',
'                                            Lines',
'                                        </li>',
'                                        <li>',
'                                            <strong>Category:</strong>',
'                                            Branding',
'                                        </li>',
'                                    </ul>',
'                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">',
'                                        <i class="fas fa-xmark me-1"></i>',
'                                        Close Project',
'                                    </button>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>  ',
'        ',
'         ',
' <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> ',
'<script src="#APP_FILES#templates/startbootstrap-agency-gh-pages/js/scripts.js"></script>'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'1'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15847744544767575)
,p_plug_name=>'oda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>170
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <!-- ODA-->',
'<script src="#APP_FILES#oda/settings#MIN#.js"></script>',
'<script src="#APP_FILES#oda/web-sdk.js" onload="initSdk(''Bots'')"></script>',
'<link rel="stylesheet" href="#APP_FILES#oda/redwood-base-madhu.css" > ',
'   <!-- ODA-->'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16984064119144369)
,p_plug_name=>'DeveloperStyle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'/*----- New Template-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: white; ',
'}  ',
'.t-Region-header {',
'    align-items: center;',
'    background-color: #1C2A35;',
'    border-block-end-color: var(--ut-region-header-border-color, var(--ut-region-border-color, rgba(0, 0, 0, .075)));',
'    border-block-end-style: solid;',
'    border-block-end-width: var(--ut-region-header-border-width, var(--ut-region-border-width, 1px));',
'    border-top-left-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    border-top-right-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    color: var(--ut-region-header-text-color, var(--ut-region-text-color, var(--ut-component-text-default-color)));',
'    display: flex',
';',
'    font-size: var(--ut-region-header-font-size, 1rem);',
'    font-weight: var(--a-base-font-weight-semibold, 500);',
'    line-height: var(--ut-region-header-line-height, 1.5rem);',
'}',
'.t-Region-bodyWrap {',
'	background-color: #171E23; ',
'}',
'.t-Header-branding {',
'    align-items: center;',
'    background-color: #1C2A35;',
'    border-bottom: var(--ut-header-border-width, 1px) solid var(--ut-header-border-color);',
'    box-shadow: var(--ut-header-box-shadow);',
'    color: var(--ut-header-text-color);',
'    display: grid;',
'    gap: var(--ut-header-item-spacing, .5rem);',
'    grid-template-areas: "controls logo navbar";',
'    grid-template-columns: auto auto 1fr;',
'    min-height: var(--ut-header-height);',
'    padding-block-end: calc(var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem)) - var(--ut-header-border-width, 1px));',
'    padding-block-start: var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-end: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-start: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    position: relative;',
'}',
'.t-Body-nav {',
'    background-color: #1C2A35;',
'    box-shadow: inset calc(var(--ut-body-nav-border-width, 1px)*-1) 0 0 var(--ut-body-nav-border-color,var(--ut-component-border-color));',
'    color: var(--ut-body-nav-text-color);',
'    grid-area: nav;',
'    height: calc(100vh - var(--js-sticky-top, 0rem));',
'    min-height: unset;',
'    overflow: auto;',
'    overflow-x: hidden;',
'    position: sticky;',
'    top: var(--js-sticky-top,0);',
'    width: var(--ut-nav-initial-width,0);',
'    z-index: 500;',
'    -webkit-overflow-scrolling: touch;',
'    -ms-overflow-style: -ms-autohiding-scrollbar',
'}',
'.t-Footer {',
'  display: none',
'}',
' /* ----------- developer style ---------------------- */',
'.home:before {',
'content : url(#APP_FILES#icons/home24.png);',
'}  ',
'',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch24.png);',
'} ',
'',
'.bankers:before{',
'content : url(#APP_FILES#icons/bankers24.png);',
'} ',
' .anmdetect:before{',
'content : url(#APP_FILES#icons/anomalydetection24.png);',
'} ',
'.fraud:before{',
'content : url(#APP_FILES#icons/frauddetection24.png);',
'} ',
'.moneylaund:before{',
'content : url(#APP_FILES#icons/moneylaundering24.png);',
'} ',
'.moneymule:before{',
'content : url(#APP_FILES#icons/moneymules24.png);',
'} ',
'.mytasks:before{',
'content : url(#APP_FILES#icons/mytasks24.png);',
'} ',
'.custanalysis:before{',
'content : url(#APP_FILES#icons/customeranalysis24.png);',
'}  ',
'.wfconsole:before{',
'content : url(#APP_FILES#icons/workflow24.png);',
'}  ',
'.administration:before{',
'content : url(#APP_FILES#icons/administration24.png);',
'}',
'.references:before{',
'content : url(#APP_FILES#icons/reference24.png);',
'}',
'.customersearch:before{',
'content : url(#APP_FILES#icons/customersearch24.png);',
'} ',
'.transactionsearch:before{',
'content : url(#APP_FILES#icons/transactionsearch24.png);',
'}   ',
'.applicationhistory:before{',
'content : url(#APP_FILES#icons/applicationhistory.png);',
'}  ',
'.applyforcard:before{',
'content : url(#APP_FILES#icons/applyforcard.png);',
'}  ',
'.bankaccount:before{',
'content : url(#APP_FILES#icons/bankaccount.png);',
'}  ',
'.bankcustomers:before{',
'content : url(#APP_FILES#icons/bankcustomers.png);',
'}  ',
'.bankstatement:before{',
'content : url(#APP_FILES#icons/bankstatement.png);',
'}  ',
'.cart:before{',
'content : url(#APP_FILES#icons/Cart.png);',
'}  ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/fundtransfer.png);',
'} ',
'.loanemi:before{',
'content : url(#APP_FILES#icons/loanemi.png);',
'} ',
'.shopping:before{',
'content : url(#APP_FILES#icons/shopping.png);',
'} ',
'.updateprofile:before{',
'content : url(#APP_FILES#icons/updateprofile.png);',
'} ',
'.references:before{',
'content : url(#APP_FILES#icons/reference24.png);',
'} ',
'.cashwithdrawal:before{',
'content : url(#APP_FILES#icons/cashwithdrawal.png);',
'} ',
'.atm:before{',
'content : url(#APP_FILES#icons/atm.png);',
'} ',
'.chequedeposit:before{',
'content : url(#APP_FILES#icons/chequedeposit.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/makepayment24.png);',
'} ',
' /* ----------- developer style ---------------------- */',
' .graph24:before{',
'content : url(#APP_FILES#icons/graph32.png);',
'} ',
' .maps32:before{',
'content : url(#APP_FILES#icons/maps32.png);',
'} ',
' .json:before{',
'content : url(#APP_FILES#icons/json24.png);',
'} ',
' .detect:before{',
'content : url(#APP_FILES#icons/detect.png);',
'} ',
' .data:before{',
'content : url(#APP_FILES#icons/datagen32.png);',
'} ',
' .datasearch:before{',
'content : url(#APP_FILES#icons/datasearch.png);',
'} ',
' .genai:before{',
'content : url(#APP_FILES#icons/genai.png);',
'} ',
' .speech:before{',
'content : url(#APP_FILES#icons/speech24.png);',
'} ',
' .vector:before{',
'content : url(#APP_FILES#icons/vectors32.png);',
'} ',
' .scheduler:before{',
'content : url(#APP_FILES#icons/scheduler.png);',
'} ',
' .messaging:before{',
'content : url(#APP_FILES#icons/messaging.png);',
'} ',
' .chat:before{',
'content : url(#APP_FILES#icons/chat.png);',
'} ',
'',
' .process:before{',
'content : url(#APP_FILES#icons/process32.png);',
'} ',
' .blockchain:before{',
'content : url(#APP_FILES#icons/blockchain32.png);',
'} ',
' .chatbot:before{',
'content : url(#APP_FILES#icons/chatbot32.png);',
'} ',
' .transactions:before{',
'content : url(#APP_FILES#icons/transactionmanagement32.png);',
'} ',
'.workflow:before{',
'content : url(#APP_FILES#icons/workflow32.png);',
'}  ',
'/* ----------- */',
'',
'.apex-row {',
'     display: block;',
'     flex-wrap: wrap; ',
'}',
'.u-Processing {',
'',
'display:none !important;',
'',
'}',
'</style>'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'6'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16984339740144372)
,p_plug_name=>'DeveloperTopIcons'
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 1 as sort_order,',
'apex_page.get_url (p_page => 36 ) as LINK1,',
'''Graphs'' title,',
''''' data,',
'''graph24'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 36 ) as link',
'from dual',
'',
'union all',
'',
'Select 2 as sort_order,',
'apex_page.get_url (p_page => 41 ) as LINK1,',
'''Maps'' title,',
''''' AS data,',
'''maps32'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 41 ) as link',
'from dual',
'',
'union all',
'',
'Select 3 as sort_order,',
'apex_page.get_url (p_page => 56 ) as LINK1,',
'''JSON Relational Duality'' title,',
''''' data,',
'''json'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 56 ) as link',
'from dual  ',
'',
'union all',
'',
'Select 4 as sort_order,',
'apex_page.get_url (p_page => 31 ) as LINK1, ',
'''Anomaly Detection'' title,',
''''' data,',
'''detect'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 31 ) as link',
'from dual',
'',
'union all',
'',
'Select 5 as sort_order,',
'apex_page.get_url (p_page => 58 ) as LINK1,',
'''Workflow & Notifications'' title,',
''''' data,',
'''workflow'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 58 ) as link',
'from dual',
'',
'union all',
'',
'Select 6 as sort_order,',
'apex_page.get_url (p_page => 85 ) as LINK1,',
'''Random Data Generator'' title,',
''''' data,',
'''data'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 85 ) as link',
'from dual',
'',
'union all',
'',
'Select 7 as sort_order,',
'apex_page.get_url (p_page => 78 ) as LINK1,',
'''Select AI'' title,',
''''' data,',
'''datasearch'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 78 ) as link',
'from dual',
'',
'union all',
'',
'Select 8 as sort_order,',
'apex_page.get_url (p_page => 78 ) as LINK1,',
'''Generative AI'' title,',
''''' data,',
'''genai'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 78 )  as link',
'from dual',
'',
'union all',
'',
'Select 9 as sort_order,',
'apex_page.get_url (p_page => 48 ) as LINK1,',
'''Speech AI'' title,',
''''' data,',
'''speech'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 48 )  as link',
'from dual',
'',
'union all',
'',
'Select 10 as sort_order,',
'apex_page.get_url (p_page => 78 ) as LINK1,',
'''AI Vector Search'' title,',
''''' data,',
'''vector'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 78 )  as link',
'from dual',
'',
'union all',
'',
'Select 11 as sort_order,',
'apex_page.get_url (p_page => 42 ) as LINK1,',
'''Scheduler Jobs'' title,',
''''' data,',
'''scheduler'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 42 )  as link',
'from dual',
'',
'union all',
'',
'Select 12 as sort_order,',
'apex_page.get_url (p_page => 74 ) as LINK1,',
'''Messaging Queue'' title,',
''''' data,',
'''messaging'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 74 )  as link',
'from dual',
'',
'union all',
'',
'Select 13 as sort_order,',
'apex_page.get_url (p_page => 58 ) as LINK1,',
'''Digital Assistant'' title,',
''''' data,',
'''chatbot'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 58 )  as link',
'from dual',
'',
'union all',
'',
'Select 14 as sort_order,',
'apex_page.get_url (p_page => 74 ) as LINK1,',
'''Transaction Management'' title,',
''''' data,',
'''transactions'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 74 )  as link',
'from dual',
'',
'union all',
'',
'Select 15 as sort_order,',
'apex_page.get_url (p_page => 1 ) as LINK1,',
'''Blockchain'' title,',
''''' data,',
'''blockchain'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 1 )  as link',
'from dual',
'',
'union all',
'',
'Select 16 as sort_order,',
'apex_page.get_url (p_page => 1 ) as LINK1,',
'''Process Automation'' title,',
''''' data,',
'''process'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 1 )  as link',
'from dual'))
,p_plug_source_type=>'PLUGIN_COOL.DASHBOARD_V_2.0'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'6'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '{ "cardWidth": 1, "refresh": 0 ,"releaveHideIcon":"fa-long-arrow-down"}	')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16984882705144377)
,p_plug_name=>'CustomerTopIcons'
,p_plug_display_sequence=>110
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 1 as sort_order,',
'apex_page.get_url (p_page => 58 ) as LINK1,',
'''Open Bank Account'' title,',
''''' data,',
'''bankaccount'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 58 ) as link',
'from dual',
'',
'union all',
'',
'Select 2 as sort_order,',
'apex_page.get_url (p_page => 88 ) as LINK1,',
'''Update My Profile'' title,',
''''' AS data,',
'''updateprofile'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 88 ) as link',
'from dual',
'',
'union all',
'',
'Select 3 as sort_order,',
'apex_page.get_url (p_page => 95 ) as LINK1,',
'''Apply for Card'' title,',
''''' data,',
'''applyforcard'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 95 ) as link',
'from dual  ',
'',
'union all',
'',
'Select 4 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1, ',
'''Application History'' title,',
''''' data,',
'''applicationhistory'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual',
'',
'union all',
'',
'Select 5 as sort_order,',
'apex_page.get_url (p_page => 56 ) as LINK1,',
'''Online Shopping'' title,',
''''' data,',
'''cart'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 56 ) as link',
'from dual',
'',
'union all',
'',
'Select 6 as sort_order,',
'apex_page.get_url (p_page => 48 ) as LINK1,',
'''ATM Cash Withdrawal'' title,',
''''' data,',
'''cashwithdrawal'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 48 ) as link',
'from dual',
'',
'union all',
'',
'Select 7 as sort_order,',
'apex_page.get_url (p_page => 49 ) as LINK1,',
'''Cheque Deposit'' title,',
''''' data,',
'''chequedeposit'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 49 ) as link',
'from dual',
'',
'union all',
'',
'Select 8 as sort_order,',
'apex_page.get_url (p_page => 85 ) as LINK1,',
'''Generate Bank Statement'' title,',
''''' data,',
'''bankstatement'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 85 )  as link',
'from dual',
'',
'union all',
'',
'Select 9 as sort_order,',
'apex_page.get_url (p_page => 74 ) as LINK1,',
'''Funds Transfer'' title,',
''''' data,',
'''fundtransfer'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 74 )  as link',
'from dual',
'',
'union all',
'',
'Select 10 as sort_order,',
'apex_page.get_url (p_page => 101 ) as LINK1,',
'''Home Loan EMI'' title,',
''''' data,',
'''loanemi'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 101 )  as link',
'from dual'))
,p_plug_source_type=>'PLUGIN_COOL.DASHBOARD_V_2.0'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '{ "cardWidth": 1, "refresh": 2 ,"releaveHideIcon":"fa-long-arrow-down"}	')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33430223431419598)
,p_plug_name=>'BankerTopIcons'
,p_plug_display_sequence=>100
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 3 as sort_order,',
'apex_page.get_url (p_page => 42 ) as LINK1,',
'''Fraud Detected'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(1000, 1300))) data,',
'''fa fa-credit-card-alt fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 42 ) as link',
'from dual',
'union all',
'Select 1 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''New Customers'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(1, 100))) AS data,',
'''fa-users fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual',
'union all',
'Select 2 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''New Applications'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(100, 200))) data,',
'''fa fa-newspaper-o fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual  ',
'union all',
'Select 4 as sort_order,',
'''#'' as LINK1,',
'''Services Offline'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(2, 10))) data,',
'''fa fa-server fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'''#'' as link',
'from dual',
'union all',
'Select 5 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''Review Tasks'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(10, 30))) data,',
'''fa fa-tasks fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual',
'union all',
'Select 6 as sort_order,',
'apex_page.get_url (p_page => 42 ) as LINK1,',
'''Total Transactions'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(10000, 15000))) data,',
'''fa fa-usd fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 42 ) as link',
'from dual',
'union all',
'Select 7 as sort_order,',
'''#'' as LINK1,',
'''App Downloads'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(20000, 30000))) data,',
'''fa fa-download fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'''#'' as link',
'from dual',
'union all',
'Select 8 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''Support Request'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(50, 100))) data,',
'''fa fa-phone fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 )  as link',
'from dual'))
,p_plug_source_type=>'PLUGIN_COOL.DASHBOARD_V_2.0'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'1'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '{ "cardWidth": 1, "refresh": 2 ,"releaveHideIcon":"fa-long-arrow-down"}	')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33505670030224378)
,p_plug_name=>'Banker Chart 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'1'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(16774501127592133)
,p_region_id=>wwv_flow_imp.id(33505670030224378)
,p_chart_type=>'pie'
,p_title=>'Profit Margins'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_value_format_scaling=>'auto'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_show_gauge_value=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options){',
'	options.dataFilter = function(data) {',
'		for (var s = 0; s < data.series.lenght; s++) {',
'			data.series[s].pieSliceExplore = 1;',
'		}',
'		console.log(data)',
'		return data;',
'	};',
'	options.styleDefaults.threeDEffect = "on";',
'	return options;',
'}'))
,p_automatic_refresh_interval=>2
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16775012192592130)
,p_chart_id=>wwv_flow_imp.id(16774501127592133)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Gross Profile Margin'' label, DBMS_RANDOM.VALUE(1, 100) AS value from sys.dual',
'union all',
'select ''Operating Profilt Margin'' label, DBMS_RANDOM.VALUE(1, 50) AS  value from sys.dual',
'union all',
'select ''Net Profit Margin'' label, DBMS_RANDOM.VALUE(1, 75) AS  value from sys.dual',
'union all',
'select ''Operating Expense Ratio'' label, DBMS_RANDOM.VALUE(1, 200) AS   value from sys.dual '))
,p_max_row_count=>20
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34231692363714312)
,p_plug_name=>'Banker Transaction Pipeline'
,p_title=>'Transaction Pipeline'
,p_icon_css_classes=>'fa-combo-chart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'1'
,p_plug_header=>'Transaction Pipeline'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(16770116207593401)
,p_region_id=>wwv_flow_imp.id(34231692363714312)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_show_gauge_value=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function (options) {',
'	options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'	return options;',
'}'))
,p_automatic_refresh_interval=>2
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16772398865593392)
,p_chart_id=>wwv_flow_imp.id(16770116207593401)
,p_seq=>10
,p_name=>'Approved'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Approved'' label, DBMS_RANDOM.VALUE(1, 40) AS RejectedTx from sys.dual',
'',
'',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD ',
'WHERE TRANSACTION_STATUS = ''APPROVE'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_items_value_column_name=>'REJECTEDTX'
,p_items_label_column_name=>'LABEL'
,p_color=>'#5884a7'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16773010167593389)
,p_chart_id=>wwv_flow_imp.id(16770116207593401)
,p_seq=>20
,p_name=>'OnHold'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''OnHold'' label, DBMS_RANDOM.VALUE(2, 40) AS OnHoldTx from sys.dual',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD WHERE TRANSACTION_STATUS = ''OnHold'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_items_value_column_name=>'ONHOLDTX'
,p_items_label_column_name=>'LABEL'
,p_color=>'#354f65'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16773623996593386)
,p_chart_id=>wwv_flow_imp.id(16770116207593401)
,p_seq=>30
,p_name=>'Rejected'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Rejected'' label, DBMS_RANDOM.VALUE(3, 20) AS RejectTx from sys.dual',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD WHERE TRANSACTION_STATUS = ''REJECT'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_items_value_column_name=>'REJECTTX'
,p_items_label_column_name=>'LABEL'
,p_color=>'#49535c'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16770606223593399)
,p_chart_id=>wwv_flow_imp.id(16770116207593401)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16771213559593396)
,p_chart_id=>wwv_flow_imp.id(16770116207593401)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'percent'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16771800265593394)
,p_chart_id=>wwv_flow_imp.id(16770116207593401)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41603845262429499)
,p_plug_name=>'BankerStyle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'/*----- New Template-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: #171E23; ',
'}  ',
'.t-Region-header {',
'    align-items: center;',
'    background-color: #1C2A35;',
'    border-block-end-color: var(--ut-region-header-border-color, var(--ut-region-border-color, rgba(0, 0, 0, .075)));',
'    border-block-end-style: solid;',
'    border-block-end-width: var(--ut-region-header-border-width, var(--ut-region-border-width, 1px));',
'    border-top-left-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    border-top-right-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    color: var(--ut-region-header-text-color, var(--ut-region-text-color, var(--ut-component-text-default-color)));',
'    display: flex',
';',
'    font-size: var(--ut-region-header-font-size, 1rem);',
'    font-weight: var(--a-base-font-weight-semibold, 500);',
'    line-height: var(--ut-region-header-line-height, 1.5rem);',
'}',
'.t-Region-bodyWrap {',
'	background-color: #171E23; ',
'}',
'.t-Header-branding {',
'    align-items: center;',
'    background-color: #1C2A35;',
'    border-bottom: var(--ut-header-border-width, 1px) solid var(--ut-header-border-color);',
'    box-shadow: var(--ut-header-box-shadow);',
'    color: var(--ut-header-text-color);',
'    display: grid;',
'    gap: var(--ut-header-item-spacing, .5rem);',
'    grid-template-areas: "controls logo navbar";',
'    grid-template-columns: auto auto 1fr;',
'    min-height: var(--ut-header-height);',
'    padding-block-end: calc(var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem)) - var(--ut-header-border-width, 1px));',
'    padding-block-start: var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-end: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-start: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    position: relative;',
'}',
'.t-Body-nav {',
'    background-color: #1C2A35;',
'    box-shadow: inset calc(var(--ut-body-nav-border-width, 1px)*-1) 0 0 var(--ut-body-nav-border-color,var(--ut-component-border-color));',
'    color: var(--ut-body-nav-text-color);',
'    grid-area: nav;',
'    height: calc(100vh - var(--js-sticky-top, 0rem));',
'    min-height: unset;',
'    overflow: auto;',
'    overflow-x: hidden;',
'    position: sticky;',
'    top: var(--js-sticky-top,0);',
'    width: var(--ut-nav-initial-width,0);',
'    z-index: 500;',
'    -webkit-overflow-scrolling: touch;',
'    -ms-overflow-style: -ms-autohiding-scrollbar',
'}',
'.t-Footer {',
'  display: none',
'}',
'/* ------------ Color Icons ---------------------- */',
'.home:before {',
'content : url(#APP_FILES#icons/home24.png);',
'}  ',
'.bankcustomer:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.openbankacc:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apply:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apphistory:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.onlineshop:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.transactions:before{',
'content : url(#APP_FILES#icons/transactions24.png);',
'} ',
'.bankstmt:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.emi:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.bankers:before{',
'content : url(#APP_FILES#icons/bankers24.png);',
'} ',
'.atm:before{',
'content : url(#APP_FILES#icons/ATM24.png);',
'} ',
'.atmcash:before{',
'content : url(#APP_FILES#icons/cashwithdrawal24.png);',
'} ',
'.atmcheque:before{',
'content : url(#APP_FILES#icons/checkdeposit24.png);',
'} ',
'.arch:before{',
'content : url(#APP_FILES#icons/architecturepresentation.png);',
'} ',
'.admin:before{',
'content : url(#APP_FILES#icons/administration.png);',
'} ',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch24.png);',
'} ',
'.anmdetect:before{',
'content : url(#APP_FILES#icons/anomalydetection24.png);',
'} ',
'.fraud:before{',
'content : url(#APP_FILES#icons/frauddetection24.png);',
'} ',
'.moneylaund:before{',
'content : url(#APP_FILES#icons/moneylaundering24.png);',
'} ',
'.moneymule:before{',
'content : url(#APP_FILES#icons/moneymules24.png);',
'} ',
'.mytasks:before{',
'content : url(#APP_FILES#icons/mytasks24.png);',
'} ',
'.custanalysis:before{',
'content : url(#APP_FILES#icons/customeranalysis24.png);',
'}  ',
'.wfconsole:before{',
'content : url(#APP_FILES#icons/workflow24.png);',
'}  ',
'.administration:before{',
'content : url(#APP_FILES#icons/administration24.png);',
'}',
'.references:before{',
'content : url(#APP_FILES#icons/reference24.png);',
'}',
'.customersearch:before{',
'content : url(#APP_FILES#icons/customersearch24.png);',
'} ',
'.transactionsearch:before{',
'content : url(#APP_FILES#icons/transactionsearch24.png);',
'} ',
'/* ------------ Color Icons ---------------------- */',
'',
'.apex-row {',
'     display: block;',
'     flex-wrap: wrap; ',
'}',
'.u-Processing {',
'',
'display:none !important;',
'',
'}',
'</style>'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'1'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41620201610381853)
,p_plug_name=>'CustomerStyle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {   ',
'   background-color: #222326;',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button { ',
'   background-color: #1C1D20;',
'}',
'.t-Region-header {',
'    align-items: center; ',
'    background-color: #1C1D20;',
'    border-block-end-color: var(--ut-region-header-border-color, var(--ut-region-border-color, rgba(0, 0, 0, .075)));',
'    border-block-end-style: solid;',
'    border-block-end-width: var(--ut-region-header-border-width, var(--ut-region-border-width, 1px));',
'    border-top-left-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    border-top-right-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    color: var(--ut-region-header-text-color, var(--ut-region-text-color, var(--ut-component-text-default-color)));',
'    display: flex',
';',
'    font-size: var(--ut-region-header-font-size, 1rem);',
'    font-weight: var(--a-base-font-weight-semibold, 500);',
'    line-height: var(--ut-region-header-line-height, 1.5rem);',
'}',
'.t-Region-bodyWrap { ',
'    background-color: #222326;',
'}',
'.t-Header-branding {',
'    align-items: center; ',
'    background-color: #1C1D20;',
'    border-bottom: var(--ut-header-border-width, 1px) solid var(--ut-header-border-color);',
'    box-shadow: var(--ut-header-box-shadow);',
'    color: var(--ut-header-text-color);',
'    display: grid;',
'    gap: var(--ut-header-item-spacing, .5rem);',
'    grid-template-areas: "controls logo navbar";',
'    grid-template-columns: auto auto 1fr;',
'    min-height: var(--ut-header-height);',
'    padding-block-end: calc(var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem)) - var(--ut-header-border-width, 1px));',
'    padding-block-start: var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-end: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-start: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    position: relative;',
'}',
'.t-Body-nav { ',
'    background-color: #161A1D;',
'    box-shadow: inset calc(var(--ut-body-nav-border-width, 1px)*-1) 0 0 var(--ut-body-nav-border-color,var(--ut-component-border-color));',
'    color: var(--ut-body-nav-text-color);',
'    grid-area: nav;',
'    height: calc(100vh - var(--js-sticky-top, 0rem));',
'    min-height: unset;',
'    overflow: auto;',
'    overflow-x: hidden;',
'    position: sticky;',
'    top: var(--js-sticky-top,0);',
'    width: var(--ut-nav-initial-width,0);',
'    z-index: 500;',
'    -webkit-overflow-scrolling: touch;',
'    -ms-overflow-style: -ms-autohiding-scrollbar',
'}',
'',
'.apex-row {',
'     display: block;',
'     flex-wrap: wrap; ',
'}',
'',
'.t-Footer {',
'  display: none',
'}',
' ',
'.home:before {',
'content : url(#APP_FILES#icons/home.png);',
'}  ',
'.bankcustomer:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.openbankacc:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apply:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apphistory:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.onlineshop:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.bankstmt:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.emi:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.atmcash:before{',
'content : url(#APP_FILES#icons/atmcash.png);',
'} ',
'.arch:before{',
'content : url(#APP_FILES#icons/architecturepresentation.png);',
'} ',
'.admin:before{',
'content : url(#APP_FILES#icons/administration.png);',
'} ',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch.png);',
'} ',
'.anmdetect:before{',
'content : url(#APP_FILES#icons/anomalydetection.png);',
'} ',
'.fraud:before{',
'content : url(#APP_FILES#icons/frauddetection.png);',
'} ',
'.moneylaund:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.moneymule:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.mytask:before{',
'content : url(#APP_FILES#icons/mytasks.png);',
'} ',
'.custanalysis:before{',
'content : url(#APP_FILES#icons/customeranalysis.png);',
'}  ',
'.wfconsole:before{',
'content : url(#APP_FILES#icons/workflowconsle.png);',
'}  ',
'',
'.applicationhistory:before{',
'content : url(#APP_FILES#icons/applicationhistory.png);',
'}  ',
'.applyforcard:before{',
'content : url(#APP_FILES#icons/applyforcard.png);',
'}  ',
'.bankaccount:before{',
'content : url(#APP_FILES#icons/bankaccount.png);',
'}  ',
'.bankcustomers:before{',
'content : url(#APP_FILES#icons/bankcustomers.png);',
'}  ',
'.bankstatement:before{',
'content : url(#APP_FILES#icons/bankstatement.png);',
'}  ',
'.cart:before{',
'content : url(#APP_FILES#icons/Cart.png);',
'}  ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/fundtransfer.png);',
'} ',
'.loanemi:before{',
'content : url(#APP_FILES#icons/loanemi.png);',
'} ',
'.shopping:before{',
'content : url(#APP_FILES#icons/shopping.png);',
'} ',
'.updateprofile:before{',
'content : url(#APP_FILES#icons/updateprofile.png);',
'} ',
'.references:before{',
'content : url(#APP_FILES#icons/reference24.png);',
'} ',
'.cashwithdrawal:before{',
'content : url(#APP_FILES#icons/cashwithdrawal.png);',
'} ',
'.atm:before{',
'content : url(#APP_FILES#icons/atm.png);',
'} ',
'.chequedeposit:before{',
'content : url(#APP_FILES#icons/chequedeposit.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/makepayment24.png);',
'} ',
'</style>'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'2'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41852254384852303)
,p_plug_name=>'Technologies / More Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_response VARCHAR2(32000); ',
'begin ',
'   l_response := getData(:APP_PAGE_ID);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48257679489348494)
,p_plug_name=>'Customerrg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>90
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'2'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32732371880346855)
,p_plug_name=>'Customer Reset Password'
,p_title=>'Reset Password'
,p_parent_plug_id=>wwv_flow_imp.id(48257679489348494)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>6
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127073005253750605477)
,p_plug_name=>'Customer View Profile'
,p_title=>'View Profile'
,p_parent_plug_id=>wwv_flow_imp.id(48257679489348494)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36382295199683647)
,p_plug_name=>'View my profile'
,p_parent_plug_id=>wwv_flow_imp.id(127073005253750605477)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_user_id number;',
'l_fullname varchar2(255);',
'l_address1 varchar2(255);',
'l_address2 varchar2(255);',
'l_city_statezip varchar2(255);',
'l_email varchar2(128);',
'l_country varchar2(128);',
'',
'begin',
'    select user_id,',
'        first_name||'' ''|| last_name, ',
'        address1, ',
'        address2, email,',
'        city||'', ''|| statezip,',
'        country',
'    into l_user_id,l_fullname,l_address1,l_address2,l_email, l_city_statezip, l_country',
'        from common_users where   upper(email) = upper(v(''APP_USER'')) ;',
'',
'    Htp.p(''<div style="color:#191715; background-color:white">'');',
'        if l_fullname!='','' then',
'        htp.p(''<p><b>  ''||l_fullname||''</b></p>'');',
'        end if;',
'        htp.p(''<p>Address: ''||l_address1||''</p>'');',
'        --htp.p(''<p> ''||l_address2||''</p>''); ',
'        if l_city_statezip!='','' then',
'        htp.p(''<p>City: ''||l_city_statezip||'' </b></p>'');',
'        end if;',
'        htp.p(''<p>Email or User Id: ''||l_email||''</p>'');',
'        htp.p(''<p>Country: ''||l_country||''</p>'');',
'    Htp.p(''</div>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48257824871348496)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(127073005253750605477)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(71866376005686440)
,p_name=>'Uploaded Files'
,p_parent_plug_id=>wwv_flow_imp.id(127073005253750605477)
,p_template=>wwv_flow_imp.id(62117175029085013)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID","EMAIL","FILE_NAME","FILE_TYPE",sys.dbms_lob.getlength("FILE_CONTENT")"FILE_CONTENT","GENDATE" from "USER_PROFILE_BC"',
'where upper(email) = upper(:P1_EMAIL)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_EMAIL'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(62221958113085074)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16785978564547782)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16783893615547795)
,p_query_column_id=>2
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16784388418547790)
,p_query_column_id=>3
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16784782638547788)
,p_query_column_id=>4
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'File Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16785100023547786)
,p_query_column_id=>5
,p_column_alias=>'FILE_CONTENT'
,p_column_display_sequence=>50
,p_column_heading=>'Image'
,p_column_format=>'IMAGE:USER_PROFILE_BC:FILE_CONTENT:ID::::::::'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16785559328547784)
,p_query_column_id=>6
,p_column_alias=>'GENDATE'
,p_column_display_sequence=>70
,p_column_heading=>'Gendate'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129816697632878485160)
,p_plug_name=>'Customer Update my profile'
,p_title=>'Update my profile'
,p_parent_plug_id=>wwv_flow_imp.id(48257679489348494)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_id,first_name, last_name, address1,address2, city, statezip from common_users where upper(email) = upper(v(''APP_USER'')) ',
' '))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P1_UID'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48258097891348498)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>150
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(245908382725543762)
,p_plug_name=>'Banker Total Transaction Value'
,p_title=>'Total Transaction Value'
,p_region_name=>'static_3naa'
,p_icon_css_classes=>'fa-combo-chart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>120
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'1'
,p_plug_header=>'Total Transaction Value'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(16765720457595139)
,p_region_id=>wwv_flow_imp.id(245908382725543762)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_show_gauge_value=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function (options) {',
'	options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'	return options;',
'}'))
,p_automatic_refresh_interval=>2
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16768046295595123)
,p_chart_id=>wwv_flow_imp.id(16765720457595139)
,p_seq=>10
,p_name=>'Approved'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Approved'' label, DBMS_RANDOM.VALUE(10000, 20000) AS TRANSACTION_TOTAL from sys.dual',
'',
'',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD ',
'WHERE TRANSACTION_STATUS = ''APPROVE'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TRANSACTION_TOTAL'
,p_items_label_column_name=>'LABEL'
,p_color=>'#9edb6b'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16768665430595117)
,p_chart_id=>wwv_flow_imp.id(16765720457595139)
,p_seq=>20
,p_name=>'OnHold'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''OnHold'' label, DBMS_RANDOM.VALUE(20000, 30000) AS TRANSACTION_TOTAL from sys.dual',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD WHERE TRANSACTION_STATUS = ''OnHold'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TRANSACTION_TOTAL'
,p_items_label_column_name=>'LABEL'
,p_color=>'#ffe787'
,p_line_style=>'solid'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(16769200039595114)
,p_chart_id=>wwv_flow_imp.id(16765720457595139)
,p_seq=>40
,p_name=>'Rejected'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Rejected'' label, DBMS_RANDOM.VALUE(10000, 15000) AS TRANSACTION_TOTAL from sys.dual',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD WHERE TRANSACTION_STATUS = ''REJECT'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TRANSACTION_TOTAL'
,p_items_label_column_name=>'LABEL'
,p_color=>'#f06c6d'
,p_line_style=>'solid'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16766278616595135)
,p_chart_id=>wwv_flow_imp.id(16765720457595139)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16766800940595132)
,p_chart_id=>wwv_flow_imp.id(16765720457595139)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(16767429954595129)
,p_chart_id=>wwv_flow_imp.id(16765720457595139)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(279310648064698064)
,p_plug_name=>'Banker Transaction Locations'
,p_title=>'Transaction Locations'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1_ROLE_ID'
,p_plug_display_when_cond2=>'1'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(16775923303590567)
,p_region_id=>wwv_flow_imp.id(279310648064698064)
,p_height=>640
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'world-map'
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_title=>'Suspected Transaction Locations'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:CIRCLE_TOOL:DISTANCE_TOOL'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(16776343379590562)
,p_map_region_id=>wwv_flow_imp.id(16775923303590567)
,p_name=>'Tx Locations'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT t.id, t.inv_no, t.total_pay, trans_status, comments, latitude, longitude, customer_fullname, merchant_fullname, merchant_place, merchant_state, merchant_region, ',
'CREDIT_CARD_NO this_credit_card, ',
'LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS previous_card, ',
'MALL this_mall, ',
'LAG(MALL) OVER (ORDER BY id) AS previous_mall,  ',
'to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,   ',
't.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'FROM RETAIL_SHOPPING_FD t ',
'where merchant_state != ''United States of America'' AND TX_TYPE = ''ML''',
'order by id  desc'))
,p_has_spatial_index=>false
,p_pk_column=>'ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Merchant Name: &MERCHANT_PLACE. <br/>',
'Customer Name: &CUSTOMER_FULLNAME. <br/> ',
'Mall: &THIS_MALL. <br/>',
'State: &MERCHANT_STATE. <br/>',
'Region: &MERCHANT_REGION. <br/>',
'Total Pay: &TOTAL_PAY. <br/>',
'Invoice No: &INV_NO. <br/>'))
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16793319440547740)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32732371880346855)
,p_button_name=>'Update_Pwd'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update password'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16792530400547744)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48258097891348498)
,p_button_name=>'saveProfile'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update my profile'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16783096152547804)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48257824871348496)
,p_button_name=>'Apply'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply for Bank Account'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P1_CNT'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17011594635020257)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(41852254384852303)
,p_button_name=>'Edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.::P105_PGNO:1'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6839174203740292)
,p_name=>'P1_ROLE_ID'
,p_item_sequence=>10
,p_source=>'select role_id from COMMON_USERS where upper(email) = upper(v(''APP_USER''))'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15848068795767578)
,p_name=>'P1_USEROPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6839269122740293)
,p_prompt=>'Useroption'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32613145581352579)
,p_name=>'P1_UID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48257679489348494)
,p_source=>'select user_id   from COMMON_USERS where upper(email) = upper(v(''APP_USER''))'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32736480769346778)
,p_name=>'P1_EMAIL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32744801615346757)
,p_name=>'P1_PASSWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32732371880346855)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32745053632346759)
,p_name=>'P1_RE_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(32732371880346855)
,p_prompt=>'Confirm New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34244733808668749)
,p_name=>'P1_CNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48257679489348494)
,p_item_default=>'select count(*) as cnt from BANK_CUSTOMERS where upper(email) = upper(v(''APP_USER''));'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34248775677668681)
,p_name=>'P1_COUNTRY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select country_name as v,country_name as d from  EBA_GRAPHVIZ_COUNTRIES order by country_name;'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34250187002668695)
,p_name=>'P1_ACCNO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_item_default=>'select ''Account Number: ''||ACCOUNT_NUMBER from BANK_CUSTOMERS where upper(email) = upper(v(''APP_USER''));'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Account Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129817106041921485172)
,p_name=>'P1_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_item_source_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129817106060283485173)
,p_name=>'P1_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_item_source_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(62255809456085102)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129817106239478485174)
,p_name=>'P1_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_item_source_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129817106268098485175)
,p_name=>'P1_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_item_source_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_prompt=>'Address 1'
,p_source=>'ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129817106439581485176)
,p_name=>'P1_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_item_source_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_source=>'ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129817106465332485177)
,p_name=>'P1_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_item_source_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129817106617997485178)
,p_name=>'P1_STATEZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_item_source_plug_id=>wwv_flow_imp.id(129816697632878485160)
,p_prompt=>'State'
,p_source=>'STATEZIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15847110721767569)
,p_validation_name=>'Validation_Password'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'if :P1_PASSWORD=:P1_RE_PASSWORD then',
'    return true;',
'else ',
'    return false;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'New Password should be equal to the Re New Password!'
,p_when_button_pressed=>wwv_flow_imp.id(16793319440547740)
,p_associated_item=>wwv_flow_imp.id(32744801615346757)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88271501078267959)
,p_name=>'UpdateComments'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88271630508267960)
,p_event_id=>wwv_flow_imp.id(88271501078267959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'v_id number;',
'v_this_credit_card varchar2(50);',
'v_previous_card  varchar2(50);',
'v_this_mall varchar2(50);',
'v_previous_mall varchar2(50);',
'v_time_diff_number number;',
'v_comment varchar2(500);',
'v_credit_card_no varchar2(50);',
'',
'Cursor C1 IS   ',
'    SELECT t.id, t.inv_no, t.total_pay, trans_status, comments,',
'    CREDIT_CARD_NO this_credit_card, ',
'    LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS previous_card, ',
'    MALL this_mall, ',
'    LAG(MALL) OVER (ORDER BY id) AS previous_mall,  ',
'    to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,   ',
'    t.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'    to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'    FROM RETAIL_SHOPPING_FD t where transaction_status = ''OnHold'' ',
'    order by id  desc;  ',
'',
'Cursor C2 IS ',
'     select credit_card_no from RETAIL_SHOPPING_FD where trans_status = ''BLOCK CARD'';',
' ',
'BEGIN',
'',
'    For row_1 In C1 Loop',
'       v_id := row_1.id; ',
'       v_this_credit_card := row_1.this_credit_card; ',
'       v_previous_card := row_1.previous_card; ',
'       v_this_mall := row_1.this_mall;',
'       v_previous_mall := row_1.previous_mall;',
'       v_time_diff_number := row_1.time_diff_number;',
'      -- Htp.p(''<br/> ''||v_id||'' this_credit_card ''||v_this_credit_card||'' previous_card ',
'      -- ''||v_previous_card||'' v_this_mall ''||v_this_mall||'' v_previous_mall ''||v_previous_mall);',
'',
'       ',
'        if   (v_time_diff_number <= 120) AND (v_time_diff_number > 60) AND',
'             (v_this_credit_card = v_previous_card) AND  ',
'             (v_this_mall != v_previous_mall) ',
'             then ',
'            v_comment := ''The same credit card has been reused in less than 120 seconds under different locations, ',
'                        so that card has been blocked''; ',
'            UPDATE RETAIL_SHOPPING_FD SET COMMENTS = v_comment WHERE ID = v_id;',
'        elsif   (v_time_diff_number <= 120) AND (v_time_diff_number > 60) AND',
'             (v_this_credit_card = v_previous_card) AND  ',
'             (v_this_mall = v_previous_mall) ',
'             then ',
'            v_comment := ''The same credit card has been reused in less than 120 seconds in same location, ',
'                        please verify''; ',
'            UPDATE RETAIL_SHOPPING_FD SET COMMENTS = v_comment WHERE ID = v_id;',
'        elsif (v_time_diff_number <= 60)    then',
'            v_comment := ''The same credit card has been reused in less than 60 seconds, so that card has been blocked''; ',
'            UPDATE RETAIL_SHOPPING_FD SET COMMENTS = v_comment WHERE ID = v_id;  ',
'       end if;',
'',
'    End Loop; ',
'',
'    For row_2 In C2 Loop',
'        v_credit_card_no := row_2.credit_card_no; ',
'        UPDATE CC_FD SET STATUS=''Blocked'', COMMENTS=''Blocked by Human Review'' WHERE CC_NO = v_credit_card_no;',
'    End Loop; ',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16983805689144367)
,p_name=>'d1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(41852254384852303)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16983925101144368)
,p_event_id=>wwv_flow_imp.id(16983805689144367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15847242013767570)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'saveProfile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update common_users',
'set first_name =:P1_first_name,',
'    last_name  =:P1_last_name,',
'    address1   = :P1_address1,',
'    address2   = :P1_address2,',
'    city       =  :P1_city,',
'    statezip   =  :P1_statezip,',
'    country = :P1_COUNTRY',
'where upper(email) = upper(v(''APP_USER'')) ;',
' ',
' APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Profile Updated.'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16792530400547744)
,p_internal_uid=>24839350455832024
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15847316289767571)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'updatePassword'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'COM_COMMON_AUTH_PKG.reset_password(:P1_USER_ID,:P1_password);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Password could not be updated'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16793319440547740)
,p_process_success_message=>'Password updated'
,p_internal_uid=>24839424731832025
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16797064843518845)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialization Profile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select user_id,',
'       first_name,',
'       last_name, ',
'       address1,     ',
'       city,       ',
'       statezip,',
'       email,',
'       country',
'',
'  into :P1_USER_ID,',
'       :P1_FIRST_NAME,',
'       :P1_LAST_NAME,',
'       :P1_ADDRESS1, ',
'       :P1_CITY,',
'       :P1_STATEZIP,',
'       :P1_EMAIL,',
'       :P1_COUNTRY',
'       ',
'from common_users',
'where   upper(email) = upper(v(''APP_USER''));',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25789173285583299
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(88811307399842657)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Expand'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE data clob;',
'fetch_vert_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'edge_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'BEGIN ',
'SELECT ',
'  (',
'    JSON_OBJECT(',
'      ''vertices'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE apex_application.g_x01',
'        ), ',
'        JSON_OBJECT(',
'          ''id'' VALUE fetch_vert_id, ',
'          ''properties'' VALUE JSON_OBJECT(',
'            ''FirstName'' VALUE ''Expanded'', ''LastName'' VALUE fetch_vert_id',
'          )',
'        )',
'      ), ',
'      ''edges'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE edge_id, ''source'' VALUE apex_application.g_x01, ',
'          ''target'' VALUE fetch_vert_id',
'        )',
'      )',
'    )',
'  ) INTO data ',
'FROM ',
'  SYS.DUAL;',
'htp.p(data);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>50510669677056807
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16797620659489981)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Expand'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE data clob;',
'fetch_vert_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'edge_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'BEGIN ',
'SELECT ',
'  (',
'    JSON_OBJECT(',
'      ''vertices'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE apex_application.g_x01',
'        ), ',
'        JSON_OBJECT(',
'          ''id'' VALUE fetch_vert_id, ',
'          ''properties'' VALUE JSON_OBJECT(',
'            ''FirstName'' VALUE ''Expanded'', ''LastName'' VALUE fetch_vert_id',
'          )',
'        )',
'      ), ',
'      ''edges'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE edge_id, ''source'' VALUE apex_application.g_x01, ',
'          ''target'' VALUE fetch_vert_id',
'        )',
'      )',
'    )',
'  ) INTO data ',
'FROM ',
'  SYS.DUAL;',
'htp.p(data);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(16792530400547744)
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>25789729101554435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16797943718487147)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Expand'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE data clob;',
'fetch_vert_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'edge_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'BEGIN ',
'SELECT ',
'  (',
'    JSON_OBJECT(',
'      ''vertices'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE apex_application.g_x01',
'        ), ',
'        JSON_OBJECT(',
'          ''id'' VALUE fetch_vert_id, ',
'          ''properties'' VALUE JSON_OBJECT(',
'            ''FirstName'' VALUE ''Expanded'', ''LastName'' VALUE fetch_vert_id',
'          )',
'        )',
'      ), ',
'      ''edges'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE edge_id, ''source'' VALUE apex_application.g_x01, ',
'          ''target'' VALUE fetch_vert_id',
'        )',
'      )',
'    )',
'  ) INTO data ',
'FROM ',
'  SYS.DUAL;',
'htp.p(data);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(16793319440547740)
,p_internal_uid=>25790052160551601
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16798966995453601)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Expand'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE data clob;',
'fetch_vert_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'edge_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'BEGIN ',
'SELECT ',
'  (',
'    JSON_OBJECT(',
'      ''vertices'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE apex_application.g_x01',
'        ), ',
'        JSON_OBJECT(',
'          ''id'' VALUE fetch_vert_id, ',
'          ''properties'' VALUE JSON_OBJECT(',
'            ''FirstName'' VALUE ''Expanded'', ''LastName'' VALUE fetch_vert_id',
'          )',
'        )',
'      ), ',
'      ''edges'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE edge_id, ''source'' VALUE apex_application.g_x01, ',
'          ''target'' VALUE fetch_vert_id',
'        )',
'      )',
'    )',
'  ) INTO data ',
'FROM ',
'  SYS.DUAL;',
'htp.p(data);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(16792530400547744)
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>25791075437518055
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16799291170452278)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Expand'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE data clob;',
'fetch_vert_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'edge_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'BEGIN ',
'SELECT ',
'  (',
'    JSON_OBJECT(',
'      ''vertices'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE apex_application.g_x01',
'        ), ',
'        JSON_OBJECT(',
'          ''id'' VALUE fetch_vert_id, ',
'          ''properties'' VALUE JSON_OBJECT(',
'            ''FirstName'' VALUE ''Expanded'', ''LastName'' VALUE fetch_vert_id',
'          )',
'        )',
'      ), ',
'      ''edges'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE edge_id, ''source'' VALUE apex_application.g_x01, ',
'          ''target'' VALUE fetch_vert_id',
'        )',
'      )',
'    )',
'  ) INTO data ',
'FROM ',
'  SYS.DUAL;',
'htp.p(data);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(16793319440547740)
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>25791399612516732
);
wwv_flow_imp.component_end;
end;
/
