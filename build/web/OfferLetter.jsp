<%-- 
    Document   : OfferLetter
    Created on : Jan 3, 2023, 1:33:32 PM
    Author     : pc
--%>

<%@page import="emp.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Offer Letter</title>
        <link rel="stylesheet" href="stylo.css">
    </head>
    <body>
    <center><h1>Offer Letter</h1></center>
    <%
        Object obj = session.getAttribute("empd");
            Employee e1 = (Employee) obj;
                        int id = e1.getEmpid();
                        String name = e1.getName();
                        int age = e1.getAge();
                        double bs = e1.getBs();
                        double h = e1.findHRA();
                        double d = e1.findDA();
                        double g = e1.findGS();
                        double c = e1.findCTC();
        out.print("Dear "+name+",<br>");
        out.print("Welcome to <b>Rapido Solutions Pvt. Ltd.</b> and congratulations on your appointment as a <b>Software Engineer</b>."+"<br>");
        out.print("The terms of your employment with the Company is listed below. Please be informed that the terms may be modified pursuant to changes in the Company policy updated from time to time."+"<br>");
        out.print("<ol><li>The date of appointment is effective from the date of joining, unless otherwise communicated in writing by the Company.</li>"+"<br>");
        out.print("<li>You will be on probation for a period of 12 months from the date of your appointment. On completion of theprobation period, your appointment shall be confirmed at the discretion of the Company based on your performanceand other criteria as applicable to your band and stream. Unless confirmation is communicated in writing, yourprobation period shall be deemed to have been extended.</li>"+"<br>");
        out.print("<li>The retirement age is 58 years.</li>"+"<br>");
        out.print("<li>You may be transferred to any other location, department, function, establishment, or branch of the Company orsubsidiary, associate or affiliate company ,in such capacity as the Company may from time to time determine. Insuch a case, you will be governed by the terms and conditions of service applicable to the new assignmentincluding compensation, working hours, holidays, leave, people policies, etc.</li>"+"<br>");
        out.print("<li>We provide support to our global customers through various Company locations in India to suit customerrequirements by operating 24x7. You would be operating from any of these locations and in any of the shifts,including night shift, as may be decided by the Company, keeping in mind the business needs and deliverables tocustomers.</li>"+"<br>");
        out.print("<li>This offer of appointment is subject to your successful completion of all curricular requirements as laid down by theUniversity/Institution for award of the degree/diploma and the requirements, including aggregate, specified by theCompany for your role, and any other criteria specified by the Company in terms of your educational qualificationson/before the date of appointment.</li>"+"<br>");
        out.print("<li>Your salary will be reviewed periodically as per Company policy.</li>"+"<br>");
        out.print("<li>Changes in your compensation are at the Company’s discretion and will be subject to and on the basis of youreffective performance and the performance results of the Company during your period of employment and other relevant criteria.</li>"+"<br>");
        out.print("<li>We are committed to ensure 'Integrity' in all aspects of the Company’s functioning. You are expected to comply withall the applicable policies of the Company including the Code of Business Conduct and Ethics (‘Policies’) as theyform an integral part of the terms of your employment with Wipro. Consequently, you are required to understand thescope and intent behind these policies and to comply with the same. These Policies are updated / modified on aperiodic basis and new policies may be introduced and notified to employees from time to time and you will berequired to comply with the same.</li>"+"<br>");
        out.print("<li><b>Training Agreement:</b>As part of your smooth transition from campus to corporate, the Company shall be providing you extensive training throughlearning interventions from the time of your selection to on-boarding. You shall be provided an opportunity to learn in Pre-Joining programs, Self-directed learning modules, MOOCs, in-classroom learning, on-the-job training, Top Gear modules,and / or customer specific tools and technology learning. Through this extensive training the Company makes significantinvestment for your project readiness and successful journey in the projects. In consideration of the Company reposingconfidence in you and providing you with the opportunity to undergo the training as detailed above and in consideration ofthe company bearing all the costs in connection with the training besides paying you normal salary and benefits, yousolemnly agree to complete the training and continue your employment with the company for a period of at least 12 months commencing from the date of your joining. In case you choose to leave the Company before the expiration of thesaid period or if your services are terminated before the expiration of the said period, for any reason whatsoever, you shall be liable to pay to the Company liquidated damages of up to Rs. 75,000/-(Rupees Seventy Five Thousand only) in themanner defined in the training agreement, signed by you with the Company.</li></ol>"+"<br>");
        out.print("<b>Please note that at any stage, whether during your online test and/or interview process or upon joining theCompany, if it is brought to our notice that you have indulged in malpractices or used illegal means to clear youronline assessment, the Company shall withdraw or revoke the offer with immediate effect and we reserve our rights to take suitable action against you as we may deem fit.</b>"+"<br>");
        out.print("<br><br><br><br>");
        out.print("<center><h2><u>Salary Offer Sheet</u></h2></center>"+"<br>");
        out.print("You shall receive salary as detailed below."+"<br>");
        out.print("<center><b>EMPLOYEE ID: </b>"+id+"<br><br>");
        out.print("<b>EMPLOYEE NAME: </b>"+name+"<br><br>");
        out.print("<b>EMPLOYEE AGE: </b>"+age+"<br><br></center>");
        out.print("<center><table border>");
        out.print("<tr><td><h3>Component</h3></td><td><h3>Amount(INR)</h3></td></tr>");
        out.print("<tr><td>Basic</td><td>"+bs+"</td></tr>");
        out.print("<tr><td>HRA</td><td>"+h+"</td></tr>");
        out.print("<tr><td>DA</td><td>"+d+"</td></tr>");
        out.print("<tr><td><b>Target Cost to Company per month</b></td><td>"+g+"</td></tr>");
        out.print("<tr><td><b>Target Cost to Company per year</b></td><td>"+c+"</td></tr>");
        out.print("</table></center>");
        out.print("<br><br><br><br>");
        out.print("<center><h2><u>Bonus Details</u></h2></center>");
        out.print("<center><table border>");
        out.print("<tr><td><h3>Year</h3></td><td><h3>Bonus Amount(INR)</h3></td></tr>");
        out.print("<tr><td>End of 6 months</td><td>15000</td></tr>");
        out.print("<tr><td>End of 18 months</td><td>50000-75000</td></tr>");
        out.print("<tr><td>End of Year 2</td><td>100000</td></tr>");
        out.print("<tr><td>End of Year 3</td><td>150000-200000</td></tr>");
        out.print("</table></center>");
        out.print("<br><br><br><br>");
        out.print("<input type='checkbox' /> I hereby confirm that I shall submit the required academic certificates including but not limited to mark sheet andProvisional or Convocation Degree Certificate within 3 months from my date of joining. I understand that my employment issubject to my aggregate meeting the Company’s eligibility criteria and submission of the above mentioned documents.<br><br>");
        out.print("<input type='checkbox' /> I hereby declare that all the particulars mentioned above are true to the best of my knowledge. In the event of my failure tosubmit the above mentioned documents or in case of any discrepancy, I shall be liable for immediate termination of myemployment with the Company.");
        out.print("<br><br><br><br>");
        out.print("<center><a href='OfferView.jsp'><input type='button' value='Submit' /></a></center>");
    %>
    </body>
</html>
