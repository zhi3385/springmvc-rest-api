<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>help-api</title>
</head>
<body> 
 <p>
        <a name="help_head"></a>
            <span style="font-size: 16pt"><strong>AddressBook RESTful API Reference</strong></span>&nbsp;
        
        <br /><br />
  		 1. <a href="#list">List/Query Contacts</a>  <br />
       2. <a href="#get">Get A Contact</a>  <br />
      3. <a href="#add">Add/Modily A Contact</a><br />
       4. <a href="#delete">Delete A contact</a><br /><br />
    </p>
    
<p id = "list">
            1.List/Query Contacts
            </p>
        <table border="1" cellpadding="0" cellspacing="0" style="width: 724px; height: 240px">
            <tr>
                <td style="width: 100px">Resource URL</td>
                <td >get http://domain.name/contacts/list</td>
            </tr>
            <tr>
                    <td style="width: 100px">Remark</td>
                <td >List contacts, if there is no parameter provided, it list all the contacts</td>
            </tr>
            <tr>
                    <td style="width: 100px">Parameters</td>
                <td >
                    [optional] state：filter by state<br>
                    [optional] areacode: filter by phone number area code<br>
                    [optional] contacteddatefrom：last contacted date start date<br>
                    [optional] contacteddateto：last contacted date end date</td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Return result</td>
                <td>
                    contact list</td>
            </tr>
            <tr>
                <td style="width: 100px">
                Fields
              	</td>
                <td>
                id: contact id<br>
                firstname: first name<br>
                lastname: last name<br>
                address: address<br>
                email: email<br>
                phone: phone number<br>
                lastcontacteddate: last contacted date<br>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    sample request</td>
                <td>
                	get http://domain.name/contacts/list?state=ma&areacode=617
                 </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    sample result</td>
                <td>
                    [{<br />
                    &nbsp;&nbsp; &nbsp;"id":1,
                    <br />
                    &nbsp; &nbsp; "firstName":"Jack",
                    <br />
                    &nbsp; &nbsp; "lastName":"Tom",
                    <br />
                    &nbsp; &nbsp; "address":"20 walnut st, boston, ma 02210",
                    <br />
                    &nbsp; &nbsp; "email":"jack.tom@yahoo.com",
                    <br />
                    &nbsp; &nbsp; "phone":"617-239-1290",<br>
                	&nbsp; &nbsp; "lastcontacteddate": "10/01/2009"<br>
                    <br />
                    },<br />
                    {<br />
                    &nbsp;&nbsp; &nbsp;"id":2,
                    <br />
                    &nbsp; &nbsp; "firstName":"John",
                    <br />
                    &nbsp; &nbsp; "lastName":"Tom",
                    <br />
                    &nbsp; &nbsp; "Address":"21 walnut st, boston, ma 02210",
                    <br />
                    &nbsp; &nbsp; "email":"john.tom@yahoo.com",
                    <br />
                    &nbsp; &nbsp; "phone":"617-239-1210"
                    <br />
                    }]</td>
            </tr>
        </table>
 

<p id = "get">
            2.Get A Contact
            </p>
        <table border="1" cellpadding="0" cellspacing="0" style="width: 724px; height: 240px">
            <tr>
                <td style="width: 100px">Resource URL</td>
                <td >get http://domain.name/contacts/get</td>
            </tr>
            <tr>
                    <td style="width: 100px">Remark</td>
                <td >get a contact</td>
            </tr>
            <tr>
                    <td style="width: 100px">Parameters</td>
                <td >
                    [required] id：contact id</td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Return result</td>
                <td>
                    contact details</td>
            </tr>
            <tr>
                <td style="width: 100px">
                Fields
              	</td>
                <td>
                id: contact id<br>
                firstname: first name<br>
                lastname: last name<br>
                address: address<br>
                email: email<br>
                phone: phone number<br>
                lastcontacteddate: last contacted date<br>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    sample request</td>
                <td>
                	get http://domain.name/contacts/get?id=1
                 </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    sample result</td>
                <td>
                    {<br />
                    &nbsp;&nbsp; &nbsp;"id":1,
                    <br />
                    &nbsp; &nbsp; "firstName":"Jack",
                    <br />
                    &nbsp; &nbsp; "lastName":"Tom",
                    <br />
                    &nbsp; &nbsp; "address":"20 walnut st, boston, ma 02210",
                    <br />
                    &nbsp; &nbsp; "email":"jack.tom@yahoo.com",
                    <br />
                    &nbsp; &nbsp; "phone":"617-239-1290"
                    <br />
                    }</td>
            </tr>
        </table>
 
<p id = "add">
            3.Add/Modify A Contact
            </p>
        <table border="1" cellpadding="0" cellspacing="0" style="width: 724px; height: 240px">
            <tr>
                <td style="width: 100px">Resource URL</td>
                <td >put http://domain.name/contacts/put</td>
            </tr>
            <tr>
                    <td style="width: 100px">Remark</td>
                <td >add a contact</td>
            </tr>
            <tr>
                    <td style="width: 100px">Parameters</td>
                <td >
                    [optional] id：contact id<br>
                [required] firstname: first name<br>
                [required] lastname: last name<br>
                [required] address: address<br>
                [required] email: email<br>
                [required] phone: phone number<br>
                [optional] lastcontacteddate: last contacted date<br>
                </td>
                
                
            </tr>
            <tr>
                <td style="width: 100px">
                    Return result</td>
                <td>
                    contact id</td>
            </tr>
            <tr>
                <td style="width: 100px">
                Fields
              	</td>
                <td>
                id: contact id
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    sample request</td>
                <td>
                	put http://domain.name/contacts/put <br><br>
                	{
                    <br />
                    &nbsp; &nbsp; "firstName":"Jack",
                    <br />
                    &nbsp; &nbsp; "lastName":"Tom",
                    <br />
                    &nbsp; &nbsp; "address":"20 walnut st, boston, ma 02210",
                    <br />
                    &nbsp; &nbsp; "email":"jack.tom@yahoo.com",
                    <br />
                    &nbsp; &nbsp; "phone":"617-239-1290"
                    <br />
                    }
                 </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    sample result</td>
                <td>
                   {id:1} </td>
            </tr>
        </table>
 
<p id = "delete">
            4.Delete A Contact
            </p>
        <table border="1" cellpadding="0" cellspacing="0" style="width: 724px; height: 240px">
            <tr>
                <td style="width: 100px">Resource URL</td>
                <td >delete http://domain.name/contacts/delete</td>
            </tr>
            <tr>
                    <td style="width: 100px">Remark</td>
                <td >delete a contact</td>
            </tr>
            <tr>
                    <td style="width: 100px">Parameters</td>
                <td >
                    [required] id：contact id</td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Return result</td>
                <td>
                    deleted item id</td>
            </tr>
            <tr>
                <td style="width: 100px">
                Fields
              	</td>
                <td>
                id: deleted contact id
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    sample request</td>
                <td>
                	delete http://domain.name/contacts/delete?id=1
                 </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    sample result</td>
                <td>{"id":1}</td>
            </tr>
        </table>
    <br />
    <br />
    <br />
</body>
</html>