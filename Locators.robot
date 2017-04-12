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
