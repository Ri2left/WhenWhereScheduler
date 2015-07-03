<%@ Page Title="Account Settings" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AccountSettings.aspx.vb" Inherits="When_Where_Web_Application.AccountSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form role="form" runat="server">

 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css">
        <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
        rel="stylesheet" type="text/css">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 text-left">
                    </div>
                    <ul class="lead nav nav-tabs" role="tablist">
                        <li>
                            <a href="Dashboard.html">Dashboard<i class="fa fa-border fa-fw fa-table pull-right text-success"></i></a>
                        </li>
                        <li>
                            <a href="Wizards.html">Wizards<i class="fa fa-border fa-fw pull-right text-primary fa-magic"></i></a>
                        </li>
                        <li>
                            <a href="Manage Resources.html">Manage Resources<i class="-plus fa fa-border fa-fw fa-user-plus pull-right s text-warning"></i></a>
                        </li>
                        <li class="active">
                            <a href="#">Account Settings<i class="fa fa-border fa-fw fa-spin fa-wrench pull-right text-danger"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Account Settings
                            <i class="fa fa-fw fa-wrench text-danger"></i>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-pills">
                            <li class="active">
                                <a href="#MY_INFO">My Info</a>
                            </li>
                            <li>
                                <a href="#NOTIFICATIONS">Notifications</a>
                            </li>
                            <li>
                                <a href="#MY_SCRATCH_PAD">My Scratch Pad</a>
                            </li>
                            <li>
                                <a href="#MESSAGE_OF_WEEK">Message of Week from Me</a>
                            </li>
                            <li>
                                <a href="#CREATE_WEBPAGE_FOR_ME">Create Webpage/Promote Me</a>
                            </li>
                            <li>
                                <a href="#REFER_A_FRIEND">Refer a friend</a>
                            </li>
                            <li>
                                <a href="#BILLING">Billing</a>
                            </li>
                            <li>
                                <a href="#ADVANCED">Advanced</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title" id="MY_INFO">
                                    <a name="MY_INFO">My Info/Settings:</a>
                                </h3>
                            </div>
                            <div class="panel-body">
                                
                                    <div class="form-group">
                                        <label class="control-label" for="exampleInputEmail1">Email address -- Your Unique Identifier, Can't Change Once Set --</label>
                                        <input
                                        class="form-control" id="exampleInputEmail1" placeholder="Enter email"
                                        type="email">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="exampleInputPassword1">Password</label>
                                        <input class="form-control" id="exampleInputPassword1"
                                        placeholder="Enter Password" type="password">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="exampleInputPassword1">First Name</label>
                                        <input class="form-control" id="exampleInputPassword1"
                                        placeholder="First Name" type="text">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="exampleInputPassword1">Last Name</label>
                                        <input class="form-control" id="exampleInputPassword1"
                                        placeholder="Last Name" type="text">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="exampleInputPassword1">Display Name</label>
                                        <input class="form-control" id="exampleInputPassword1"
                                        placeholder="Enter Name You Want Everyone to See" type="text">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="exampleInputPassword1">Cell phone&nbsp;</label>
                                        <input class="form-control" id="exampleInputPassword1"
                                        placeholder="Enter Cell to get urgent schedule changes via text" type="text">
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label class="radio-inline">
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                                checked="">AT&amp;T</label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"
                                                checked="">Verizon</label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3"
                                                checked="">T-Mobile</label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optionsRadios" id="optionsRadios4" value="option4"
                                                checked="">Sprint</label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optionsRadios" id="optionsRadios4" value="option5"
                                                checked="">None (no texts will be sent)</label>&nbsp;&nbsp;
                                            <button type="submit"
                                            class="btn btn-primary">Send Test Text</button>
                                        </div>
                                    </div>
                                
                                <h3>The way I will most often use WhenWhere.org :</h3>
                                
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                                checked="">Use the terms Clients and Provider (recomended for business use)</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                                checked="">Use the terms Students and Teacher (recommended if using to book lessons)</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                                checked="">Use the terms Guests and Host (generic terms)</label>
                                        </div>
                                    </div>
                                
                                <h4>My Time Zone:</h4>
                                <div class="form-group">
                                    <select name="os0">
                                        <option value="Time Zonne">Pacific</option>
                                    </select>
                                </div>
                                <h4 contenteditable="true">Prevent Manual Scheduling by Hots:</h4>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Hosts (that have my email) can invite me to events but don't let them
                                            add me manually as an attendee of an event</label>
                                    </div>
                                </div>
                                <a href="#"><i class="fa fa-3x fa-arrow-up fa-fw pull-right"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw pull-right fa-question"></i></a>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <a name="NOTIFICATIONS">Notifications:</a>
                                </h3>
                            </div>
                            <div class="panel-body">
                                <h4 contenteditable="true">When a change happens to an event I'm participating in:</h4>
                               
                                   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                                    <%--<asp:Timer ID="TimerSave" runat="server" Interval="15000"></asp:Timer> --%>

                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input runat="server" type="radio" id="optNotifyImmediately" onchange="javascript:__doPostBack('','')" name="optradio" value=0>Notify me immediately if there are any change in an Event I'm participating
                                                in (multiple back to back edits can cause multiple emails)</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input runat="server" type="radio" id="optNotifyOnceAtEventCreationAnd2hrsBefore" onchange="javascript:__doPostBack('','')" name="optradio" value=1>Notify me once at event creation, then no updates until two hours before
                                                event, then immidiate updates</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input runat="server" type="radio" id="optNotifyOnceAtEventCreationAnd24hrsBefore" onchange="javascript:__doPostBack('','')" name="optradio" value=2>Notify me once at event creation, then no updates until 24 hours before
                                                event, then immidiate updates</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input runat="server" type="radio" id="optNotifyAnyChangesInLast10minutes" onchange="javascript:__doPostBack('','')" name="optradio" value=3>Notify if any Changes have occured to my events in last 10 minutes (RECOMMENDED)</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input runat="server" type="radio" name="optradio" onchange="javascript:__doPostBack('','')" id="optOnlyOncePerDay" value=4>Save Any Changes to my events into one email no more than ONCE A DAY (WARNING:
                                                If there is a last minute change to an event you might not be notified
                                                in time)</label>
                                        </div>
                                    </div>
                                    <br>
                                    <h4 contenteditable="true">Additonal Notification for Finalized Events:</h4>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Send A Message on Finalized Event Details When an Event is Frozen/Finalized
                                                (if host has selected the Freeze option) Regardless of My Notification
                                                Selection Above</label>
                                        </div>
                                    </div>
                                    <hr>
                                    <h4 contenteditable="true">Attendee updates</h4>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Stop messages/notifications of attendee changes/comments that don't effect
                                                event's where/when/what</label>
                                        </div>
                                    </div>
                                    <hr>
                                    <h4 contenteditable="true">Non-event related notifications:</h4>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Stop messages/notifications from Host/Provider (that is not related to
                                                specific event I am participating in)</label>
                                        </div>
                                    </div>
                                
                                <a href="#"><i class="fa fa-3x fa-arrow-up fa-fw pull-right"></i></a>
                               
                            </div>
                        
                       </div>
                        <hr>
                        <hr>
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <a name="MY_SCRATCH_PAD">My Scratch Pad:</a>
                                </h3>
                            </div>
                            <div class="panel-body">
                              
                                    <div class="form-group">
                                        <label class="control-label">My Private &nbsp;Scratch Pad/Notes:</label>
                                        <textarea runat="server"  onchange="javascript:__doPostBack('','')" id="txtAreaMyScratchPad" class="form-control"
                                        placeholder="A place to enter any quick general notes/reminders for yourself."
                                        rows="6"></textarea>
                                    </div>
                            
                                <a href="#"><i class="fa fa-3x fa-arrow-up fa-fw pull-right"></i></a>
                            </div>
                        </div>
                        <hr>
                        <hr>
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <a name="MESSAGE_OF_WEEK">My Dashboard Message of the week to dispaly to my guests/clients:</a>
                                </h3>
                            </div>
                            <div class="panel-body">
                               
                                    <div class="form-group">
                                        <label class="control-label">Dashboard Message of the Week:</label>
                                        <textarea class="form-control" placeholder="This will be displayed on dashboard of whoever subscribes to you schedule. Can update as often or as little as needed"></textarea>
                                    </div>
                               
                                <a href="#"><i class="fa fa-3x fa-arrow-up fa-fw pull-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
             
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title" id="CREATE_WEBPAGE_FOR_ME">
                                    <a name="CREATE_WEBPAGE_FOR_ME">Create A Web Page for Me/Promote Me:</a>
                                </h3>
                            </div>
                            <div class="panel-body">
                                
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                                checked="">Create a Web Page for Me</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">My Logo URL:</label>
                                        <input class="form-control" type="text" placeholder="Enter a full working html link to an image you want displayed (optional)">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">My Main Info:</label>
                                        <textarea class="form-control" placeholder="Enter main info about your business (HTML is OKAY)"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                                checked="">I have my own, add a login panel</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">My &nbsp;Own Existing Website URL:</label>
                                        <input class="form-control"
                                        type="text" placeholder="Enter Your Existing webpage URL and we will Add Login Panel Next to it">
                                    </div>
                                    <div class="form-group">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                                checked="">I have my own, give me HTML snipet:</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">HTML snippet that will Add a login control to your existing web page:</label>
                                        <input
                                        class="form-control" type="text" placeholder="Give this to your website administrator to add the WhenWhere.org login controls">
                                    </div>
                                
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputEmail3" class="control-label">Resulting Web Page</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputEmail3" placeholder="WhenWhere.org/8398302 or WhenWhere.org/URLNAME">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputEmail3" class="control-label">URL name:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputEmail3" placeholder="Pick and easy to remember name for your web page. This will be yours (if available), not recommended to change once set.">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-primary">Test My Web Page</button>
                                        </div>
                                    </div>
                                
                                    <div class="container">
                                        <div class="dropdown">
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                                <li role="presentation">
                                                    <a role="menuitem" tabindex="-1" href="#">HTML</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" tabindex="-1" href="#">CSS</a>
                                                </li>
                                                <li role="presentation">
                                                    <a role="menuitem" tabindex="-1" href="#">JavaScript</a>
                                                </li>
                                                <li role="presentation" class="divider"></li>
                                                <li role="presentation">
                                                    <a role="menuitem" tabindex="-1" href="#">About Us</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputEmail3" class="control-label">My Directory Summary:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputEmail3" placeholder="Displayed Information About Me on Public Directory/Search Results">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputEmail3" class="control-label">Zip code for Directory:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputEmail3" placeholder="Your zip code for localization in the WhenWhere.org Public Directory">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <div class="checkbox">
                                                <label class="checkbox-inline">
                                                    <input type="checkbox">List Me on WhenWhere.org Public Directory and Make Me Searchable</label>
                                                <label
                                                class="checkbox-inline">
                                                    <input type="checkbox">Let People Find Me Only if They Search for Me On WhenWhere.org</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label class="control-label">Visibility on Directory:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <div class="radio">
                                                <label class="radio">
                                                    <input type="radio">List Me on WhenWhere.org Public Directory and Make Me Searchable (whenever
                                                    available)</label>
                                            </div>
                                            <div class="radio">
                                                <label class="radio">
                                                    <input type="radio">Let People Find Me Only if They Search for Me On WhenWhere.org</label>
                                            </div>
                                            <div class="radio">
                                                <label class="radio">
                                                    <input type="radio" checked="">Keep me HIDDEN/Not searchable in WhenWhere.org Directory</label>
                                            </div>
                                        </div>
                                    </div>
                               
                                <a href="#"><i class="fa fa-3x fa-arrow-up fa-fw pull-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <p></p>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <a name="REFER_A_FRIEND">Refer a Friend:</a>
                                </h3>
                            </div>
                            <div class="panel-body">
                               
                                    <div class="form-group">
                                        <label class="control-label" for="exampleInputEmail1">Email address(es):</label>
                                        <input class="form-control" id="exampleInputEmail1"
                                        placeholder="Friend's Email (can enter multiples separated by commans) -- MAKE SURE THIS IS THE EMAIL THEY WANT TO USE. ONCE SET, CAN'T CHANGE."
                                        type="email">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="exampleInputPassword1">Invitation Message:</label>
                                        <input class="form-control" id="exampleInputPassword1"
                                        placeholder="Enter Invitation Message-- One Free Month of Hosting Awarded Per Referral (Credit granted after Referal pays for one month)"
                                        type="text">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Invite Friend (Simple)</button>
                                
                                <p></p>
                                <a class="btn btn-warning">Invite Friend (PROFESIONAL)*...</a>
                                <div>&nbsp;*Use PROFESSIONAL link if using to earn money for your favorite
                                    charity or yourself. This setsup involves more steps and setups up more
                                    of the account details for your friend and hence they will be more likely
                                    to join and give you/your charity a referal. If you do a profesional invite
                                    you will get a credit EVERY month your referal pays to be a host (not just
                                    initial month) for up to 10 credits per host. After you have 1000 credits
                                    we will paypal you 20 percent of the proceeds to charity of your choice
                                    (or to you).</div>
                                <div>&nbsp;</div>
                                
                                    <div class="form-group">
                                        <label class="control-label">Your Invite/Acceptance/Credit History</label>
                                        <textarea class="form-control"
                                        rows="6" readonly=""></textarea>
                                    </div>
                             
                                <a href="#"><i class="fa fa-3x fa-arrow-up fa-fw pull-right"></i></a>
                            </div>
                        </div>
                        <hr>
                        <hr>
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <a name="BILLING">Billing:</a>
                                </h3>
                            </div>
                            <div class="panel-body">
                                <h3 contenteditable="true" class="text-right">Current Available Credits: 2 months unlimited, plus 1 Event Hosting &nbsp;</h3>
                                
                                action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                                    <input type="hidden" name="cmd" value="_s-xclick">
                                    <input type="hidden" name="hosted_button_id" value="AUFZCHJBQ5UZ4">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input type="hidden" name="on0" value="Price">Subscribe for Unlimited Hosting Ability (will be charged after using up
                                                    all available credits. Being a guest/client is always free and unlimited)</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <select name="os0">
                                                        <option value="Unlimited Hosting 7.95 a Month">Unlimited Hosting 7.95 a Month</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif"
                                    border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                                    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif"
                                    width="1" height="1">
                                   
                                    <p></p>
                                    <p></p>
                                   
                                        <div class="form-group">
                                            <label class="control-label">Billing History</label>
                                            <textarea class="form-control" rows="6" readonly="">https://developer.paypal.com/webapps/developer/docs/classic/products/</textarea>
                                        </div>
                                                                 <br>Cancel Your Subscription:
                                    <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_subscr-find&amp;alias=ZNDDS4WVC7AXG">
<img src="https://www.paypalobjects.com/en_US/i/btn/btn_unsubscribe_LG.gif" border="0">
</a>
                                    <h3>Gift Some Else's Subciption:</h3>
                                    <div></div>
                                    <%--<form action="https://www.paypal.com/cgi-bin/webscr" method="post"
                                    target="_top">--%>
                                        <input type="hidden" name="cmd" value="_s-xclick">
                                        <input type="hidden" name="hosted_button_id" value="3PCV6947RRM7A">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <input type="hidden" name="on0" value="Price">Price</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select name="os0">
                                                            <option value="Unlimited Hosting 7.95 a Month">Unlimited Hosting 7.95 a Month</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input type="hidden" name="on1" value="Email of Subscribed:">Email of Subscribed:</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input type="text" name="os1" maxlength="200">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif"
                                        border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                                        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif"
                                        width="1" height="1">
                                    
                                    <h4>Cancel Subsription Gifts:</h4>
                                    <input type="text" name="cancel" maxlength="200"
                                    placeholder="Friend1@somwhere.com">
                                    <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_subscr-find&amp;alias=ZNDDS4WVC7AXG">
<img src="https://www.paypalobjects.com/en_US/i/btn/btn_unsubscribe_LG.gif" border="0">
</a>
                                    <p></p>
                                    <input type="text" name="cancel" maxlength="200" placeholder="Friend2@somwhere.com">
                                    <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_subscr-find&amp;alias=ZNDDS4WVC7AXG">
<img src="https://www.paypalobjects.com/en_US/i/btn/btn_unsubscribe_LG.gif" border="0">
</a>
                                    <a href="#"><i class="fa fa-3x fa-arrow-up fa-fw pull-right"></i></a>
                            </div>
                        </div>
                        <hr>
                        <hr>
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <a name="ADVANCED">Advanced -- For Business Owners Needing to Manage Multiple Accounts:</a>
                                </h3>
                            </div>
                            <div class="panel-body">
                                <h3>I fully own these accounts:</h3>
                                <hr>
                               
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputEmail3" class="control-label">Account Email:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail3" placeholder="Account 1 Email (keep making more rows so there is always one blank row)">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputPassword3" class="control-label">Common Passphrase:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" id="inputPassword3" placeholder="Some visible passphrase">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputEmail3" class="control-label">Account Email:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail3">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputPassword3" class="control-label">Common Password:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputPassword3" placeholder="Common Passphrase to Link accounts (different than your password, keep your password secure)">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">I understand as owner I will have 100 percent access to these accounts.
                                                    Common passwords need to match on both owned and owning accounts to grant
                                                    access.</label>
                                            </div>
                                        </div>
                                    </div>
                                    <h3>I am fullyed owned by these accounts:</h3>
                                    <hr>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputEmail3" class="control-label">Account Email:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail3" placeholder="Account 1 Email (keep making more rows so there is always one blank row)">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputPassword3" class="control-label">Common Passphrase:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputPassword3" placeholder="some visitble passphrase">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputEmail3" class="control-label">Account Email:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail3">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label for="inputPassword3" class="control-label">Common Passphrase:</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputPassword3" placeholder="Common Passphrase to Link accounts (different than your password, keep your password secure)">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">I understand I am granting these accountes 100 percent access to my account,
                                                    and I verify I trust them fully. Common passwords need to match on both
                                                    owned and owning accounts.</label>
                                            </div>
                                        </div>
                                    </div>
                               
                                <a href="#"><i class="fa fa-3x fa-arrow-up fa-fw pull-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="nav nav-pills">
                    <li>
                        <a href="#MY_INFO">My Info</a>
                    </li>
                    <li>
                        <a href="#NOTIFICATIONS">Notifications</a>
                    </li>
                    <li>
                        <a href="#MY_SCRATCH_PAD">My Scratch Pad</a>
                    </li>
                    <li>
                        <a href="#MESSAGE_OF_WEEK">Message of Week from Me</a>
                    </li>
                    <li>
                        <a href="#CREATE_WEBPAGE_FOR_ME">Create Webpage/Promote Me</a>
                    </li>
                    <li>
                        <a href="#REFER_A_FRIEND">Refer a friend</a>
                    </li>
                    <li>
                        <a href="#BILLING">Billing</a>
                    </li>
                    <li class="active">
                        <a href="#ADVANCED">Advanced</a>
                    </li>
                </ul>
                <br>
            </div>
        </div>
     </form>

</asp:Content>
