prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'AI for FinServ - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Login-region {',
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
'}'))
,p_step_template=>wwv_flow_imp.id(62091880896084993)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8469659721056452)
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
'<!-- Navigation-->',
'        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">',
'            <div class="container px-4 px-lg-5">',
'                <a class="navbar-brand" href="#page-top" style="color:#FDCE56">',
'                    <img src="#APP_FILES#icons/app-icon-512.png" width="48px" height="48px" alt="..." />  AI for Financial Services</a>',
'                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-t'
||'oggler-icon"></span></button>',
'               ',
'            </div>',
'        </nav>',
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62372204933085313)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62178579840085050)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62374256987085322)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(62372204933085313)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-key'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6838989880740290)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(62372204933085313)
,p_button_name=>'SignUp'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'No account yet? Sign-up now'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:86::'
,p_icon_css_classes=>'fa-user-clock'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6957990353734555)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(62372204933085313)
,p_button_name=>'Forgot_Password'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forgot Password'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:86::'
,p_icon_css_classes=>'fa-lock-password'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15847983321767577)
,p_name=>'P9999_USEROPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(62372204933085313)
,p_prompt=>'User Option'
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
 p_id=>wwv_flow_imp.id(62372639937085318)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(62372204933085313)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(62254214243085098)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62373046057085319)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(62372204933085313)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(62254214243085098)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62373446206085320)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(62372204933085313)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(62254214243085098)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62373912660085321)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(62372204933085313)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(62254214243085098)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62376490249085329)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>24075852526299479
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62374567644085325)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );',
'    end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>24073929921299475
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62378353000085330)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>24077715277299480
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62378002406085330)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>24077364683299480
);
wwv_flow_imp.component_end;
end;
/
