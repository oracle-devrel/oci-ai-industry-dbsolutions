prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_name=>'SelfRegistration'
,p_alias=>'SELFREGISTRATION'
,p_step_title=>'SelfRegistration'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' .t-Login-region {',
'    background: transparent !important; ',
'}',
'',
'.t-Login-container {',
'    /* background: url(#APP_FILES#OCPC-2k.jpg) no-repeat center center fixed; !important; */',
'     background-color: #171E23; ',
'     color: white;',
'    background-size: cover !important;',
'}',
'  .a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button {',
'   background-color: #86a64e; ',
'   color: white;',
'}  ',
' ',
'.t-Login-logo {',
'    background-color: transparent;',
'}',
'',
'#t_Body_content {  ',
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
'/* ',
'.u-Processing { ',
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
'.t-Body-nav {',
'    ',
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
'*/',
'  '))
,p_step_template=>wwv_flow_imp.id(62091880896084993)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6836594935740267)
,p_plug_name=>'Form'
,p_title=>'User Registration - Self Service'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_query_type=>'TABLE'
,p_query_table=>'COMMON_USERS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10609293264071362)
,p_plug_name=>'What is your mother''s maiden name? or your favorite color?'
,p_parent_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34325778818321912)
,p_plug_name=>'Home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
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
' <!-- ODA-->',
'<script src="#APP_FILES#oda/settings#MIN#.js"></script>',
'<script src="#APP_FILES#oda/web-sdk.js" onload="initSdk(''Bots'')"></script>',
'<link rel="stylesheet" href="#APP_FILES#oda/redwood-base-madhu.css" > ',
'   <!-- ODA-->',
'',
' ',
'          <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">',
'            <div class="container px-4 px-lg-5">',
'                <a class="navbar-brand" href="#page-top" style="color:#FDCE56">',
'                    <img src="#APP_FILES#icons/app-icon-512.png" width="48px" height="48px" alt="..." />  AI for Financial Services</a>',
'                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-t'
||'oggler-icon"></span></button>',
'               ',
'            </div>',
'        </nav> ',
'        ',
'        <!-- About-->',
'        <section class="page-section bg-primary" id="about"  >',
'            <div class="container px-4 px-lg-5">',
'                <div class="row gx-4 gx-lg-5 justify-content-center">',
'                    <div class="col-lg-8 text-center">',
'                        <h2 class="text-white mt-0">We''ve got what you need!</h2>',
'                        <hr class="divider divider-light" />',
'                        <p class="text-white-75 mb-4">',
'                            Experience the convenience of banking with our Savings Account, available online with exclusive benefits. ',
'                            Discover a range of features and perks tailored to your needs, with various account options to choose from. <br/> ',
'                        </p>',
'                        <a class="btn btn-light btn-xl" href="f?p=&APP_ID.:86:&SESSION.::&DEBUG.::::"> Sign up for Bank Account </a>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        ',
'        <!-- Portfolio-->',
'        <div id="portfolio" >',
'            <div class="container-fluid p-0">',
'                <div class="row g-0">',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#images/ind1600.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Core Banking</div>',
'                                <div class="project-name">Internet Banking</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#images/ind2600.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Core Banking</div>',
'                                <div class="project-name">Mobile Banking</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#images/ind3600.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Premium Cards</div>',
'                                <div class="project-name">Gold Credit Cards</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#images/ind4600.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Support</div>',
'                                <div class="project-name">24*7 Customer Support</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#images/ind6600.jpg" alt="..." />',
'                            <div class="portfolio-box-caption">',
'                                <div class="project-category text-white-50">Realtime Data</div>',
'                                <div class="project-name">Access your data anytime</div>',
'                            </div>',
'                        </a>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <a class="portfolio-box" href="#" title="Project Name">',
'                            <img class="img-fluid" src="#APP_FILES#images/ind7600.jpg" alt="..." />',
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
'        <!-- <section class="page-section bg-dark text-white">',
'            <div class="container px-4 px-lg-5 text-center">',
'                <h2 class="mb-4">Putting women and families at the center of Healthcare!</h2>',
'                <a class="btn btn-light btn-xl" href="https://wkrfs4xeqva1jcu-ind23aiv2.adb.us-phoenix-1.oraclecloudapps.com/ords/r/docuserws/healthcare-ai/home">AI for Healthcare</a>',
'            </div>',
'        </section> -->',
'        <!-- Contact-->',
'        <!-- <section class="page-section" id="contact">',
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
'        </section> -->',
'        <!-- Footer-->',
'',
'        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>',
'<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>',
'<script src="#APP_FILES#templates/replace-this/js/scripts.js"></script>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6838663757740287)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P86_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6838739983740288)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-window-close'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6838867145740289)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_button_name=>'Create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Register my profile'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P86_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-user'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6839032029740291)
,p_branch_name=>'go to home'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6836823289740269)
,p_name=>'P86_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6836974280740270)
,p_name=>'P86_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Email or UserId'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(62255809456085102)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837071791740271)
,p_name=>'P86_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Password'
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>60
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_imp.id(62255809456085102)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837135940740272)
,p_name=>'P86_VERIFICATION_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_source=>'VERIFICATION_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837247984740273)
,p_name=>'P86_ROLE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_source=>'ROLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837320895740274)
,p_name=>'P86_REFER_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Refer Url'
,p_source=>'REFER_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837461485740275)
,p_name=>'P86_REFER_USER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Refer User Id'
,p_source=>'REFER_USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837591502740276)
,p_name=>'P86_POINTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Points'
,p_source=>'POINTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837603549740277)
,p_name=>'P86_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837721596740278)
,p_name=>'P86_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837793748740279)
,p_name=>'P86_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Address1'
,p_source=>'ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6837988183740280)
,p_name=>'P86_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Address2'
,p_source=>'ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6838081030740281)
,p_name=>'P86_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6838143461740282)
,p_name=>'P86_STATEZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Statezip'
,p_source=>'STATEZIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6838322576740284)
,p_name=>'P86_RE_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Confirm Password'
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_imp.id(62255809456085102)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6957780835734553)
,p_name=>'P86_ANSWER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_prompt=>'Answer (Used if forgot password)'
,p_source=>'ANSWER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(62255809456085102)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6957849253734554)
,p_name=>'P86_QUESTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10608811310071357)
,p_name=>'P86_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10608951646071358)
,p_name=>'P86_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_item_source_plug_id=>wwv_flow_imp.id(6836594935740267)
,p_source=>'GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6838210881740283)
,p_validation_name=>'ValidationEmail'
,p_validation_sequence=>10
,p_validation=>'P86_EMAIL'
,p_validation2=>'^[a-zA-Z0-9_!#$%&''*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Wrong Email Format.'
,p_associated_item=>wwv_flow_imp.id(6836974280740270)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6838435518740285)
,p_validation_name=>'Validation_Password'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'if :p86_password=:P86_RE_PASSWORD then',
'    return true;',
'else ',
'    return false;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Password should be equal to the Re Password!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6838528333740286)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form Register'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'COM_COMMON_AUTH_PKG.create_account(:P86_email,:P86_password, :P86_ANSWER);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P86_USER_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>15830636775804740
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6836786278740268)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6836594935740267)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form SelfRegistration'
,p_internal_uid=>15828894720804722
);
wwv_flow_imp.component_end;
end;
/
