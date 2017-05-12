*** Settings ***

*** Variables ***
${item_index}     0
${locator_create_dop_zak}    xpath=.//*[@id='logoutFormTop']/ul/li[1]/ul/li[1]    # xpath=.//*[@id='logoutFormTop']/ul/li[1]/ul/li[1]
${locator_enter}    xpath=.//*[@id='logoutFormTop']/ul/li[2]/ul/li[1]/a    # xpath=.//*[@id='logoutFormTop']/ul/li[2]/ul/li[1]/a
${locator_cabinetEnter}    xpath=.//*[@id='logoutFormTop']/ul/li[2]/a
${locator_emailField}    id=Email    # id=Email
${locator_passwordField}    id=Password    # id=Password
${locator_loginButton}    xpath=html/body/div[3]/div/div/div[2]/div/form/button    # xpath=html/body/div[3]/div/div/div[2]/div/form/button
${locator_buttonTenderAdd}    xpath=.//a[@href="/Purchase/Create"]    # додати допорогову закупівлю
${locator_tenderTitle}    id=Title    # id=Title
${locator_button_create}    xpath=.//*[@id='logoutFormTop']/ul/li[1]/a    # xpath=.//*[@id='logoutFormTop']/ul/li[1]/a
${locator_budget}    id=Budget
${locator_min_step}    id=Budget    # id=Budget
${locator_pdv}    xpath=.//*[@id='IsVAT']/div[1]
${locator_discussionDate_start}    id=DiscussionDate_Start
${locator_discussionDate_end}    id=DiscussionDate_End
${locator_bidDate_start}    id=BidDate_Start
${locator_bidDate_end}    id=BidDate_End
${locator_button_next_step}    xpath=.//*[@id='wrapper']/div/div/div/div[1]/div/div/div[2]/form/div[9]/div/button
${locator_add_item_button}    xpath=.//*[@id='wrapper']/div/div/div/div[3]/div[1]/div/button
${locator_item_description}    id=Description
${locator_Quantity}    id=Quantity
${locator_button_create_plus}    id=btn_create_purchase    # id=btn_create_purchase
${locator_dopzakupka_creation}    xpath=.//*[@id='url_create_purchase_0']/..    # xpath=.//*[@id='url_create_purchase_0']/..
${locator_zakupka_name_ukr}    id=title    # id=title
${locator_zakupka_name_eng}    id=title_en    # id=title_en
${locator_Currency_field_choose}    name=currencies    # name=currencies
${locator_expected_value}    id=budget    # id=budget
${locator_minstep_value_money}    id=min_step    # id=min_step
${locator_tender_guarantee}    id=guarantee    # id=guarantee
${locator_clarification_period_start}    id=period_enquiry_start    # id=period_enquiry_start
${locator_clarification_period_end}    id=period_enquiry_end    # id=period_enquiry_end
${locator_entrance_arrow}    xpath=.//*[@id='header']/nav/div[2]/ul/li[4]/a    # xpath=.//*[@id='header']/nav/div[2]/ul/li[4]/a
${locator_login_dropdown}    id=butLoginPartial    # id=butLoginPartial
${locator_button_login}    id=submitLogin    # id=submitLogin
${locator_next_step_frst}    id=next_step    # id=next_step
${locator_add_positionButton}    id=add_procurement_subject0    # id=add_procurement_subject0
