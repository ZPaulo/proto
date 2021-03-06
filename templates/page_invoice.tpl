{include file='common/betterHeader.tpl'}
{literal}
 <script>
    $( document ).ready(function() {
        $("#print").click(function() {
            $('#breadcrumbs').hide();
            $('#footer-v1').hide();
            $('#header').hide();
        });
    });
</script>
{/literal}
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
    	<div class="container">
            <h1 class="pull-left">Invoice</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index-2.html">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active">Invoice</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div id="printC" class="container content">
        <!--Invoice Header-->
        <div class="row invoice-header">
            <div class="col-xs-6">
                <img src="assets/img/img.jpg" alt="">
                <!-- You also can use a title instead of image
                <h2 class="pull-left">Product Invoice</h2>
                -->
            </div>
            <div class="col-xs-6 invoice-numb">
                #123456789 / 20, October 2013
                <span>Auiderer facilis consectetur</span>
            </div>
        </div>
        <!--End Invoice Header-->

        <!--Invoice Detials-->
        <div class="row invoice-info">
            <div class="col-xs-6">
                <div class="tag-box tag-box-v3">
                    <h2>Client Information:</h2>
                    <ul class="list-unstyled">
                        <li><strong>First Name:</strong> MR.JOHN</li>
                        <li><strong>Last Name:</strong> NILSON</li>
                        <li><strong>Country:</strong> CANADA</li>
                        <li><strong>DOB:</strong> YYYY/MM/DD</li>
                    </ul>
                </div>        
            </div>
            <div class="col-xs-6">
                <div class="tag-box tag-box-v3">
                    <h2>Peyment Details:</h2>        
                    <ul class="list-unstyled">
                        <li><strong>Bank Name:</strong> 123456789012</li>
                        <li><strong>Account Number:</strong> 123456789012</li>
                        <li><strong>SWIFT Code:</strong> 123DEMO45DEMO</li>
                        <li><strong>V.A.T Reg #:</strong> 678DEMO45545</li>
                    </ul>
                </div>
            </div>
        </div>
        <!--End Invoice Detials-->

        <!--Invoice Table-->
        <div class="panel panel-default margin-bottom-40">
            <div class="panel-heading">
                <h3 class="panel-title">Invoice Details</h3>
            </div>
            <div class="panel-body">
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</p>
            </div>
            <table class="table table-striped invoice-table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Item</th>
                        <th class="hidden-sm">Description</th>
                        <th>Quantity</th>
                        <th>Unit Cost</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Keyboard</td>
                        <td class="hidden-sm">At vero eos et accusamus etofficia mollitia</td>
                        <td>252</td>
                        <td>$52</td>
                        <td>$18476</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Displays</td>
                        <td class="hidden-sm">Verode eoset accusamus etofficia deserunt</td>
                        <td>78</td>
                        <td>$128</td>
                        <td>$12047</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Phones</td>
                        <td class="hidden-sm">Etquas molestias deexcepturi dasint</td>
                        <td>16</td>
                        <td>$450</td>
                        <td>$7968</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Software</td>
                        <td class="hidden-sm">Atofficia droeos etofficia taccusamus</td>
                        <td>191</td>
                        <td>$24</td>
                        <td>$4099</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Speakers</td>
                        <td class="hidden-sm">Dacusamus deserunt veroeoset vero eos</td>
                        <td>65</td>
                        <td>$119</td>
                        <td>$9456</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--End Invoice Table-->

        <!--Invoice Footer-->
        <div class="row">
            <div class="col-xs-6">
                <div class="tag-box tag-box-v3 no-margin-bottom">
                    <address class="no-margin-bottom">
                        25, Lorem Lis Street, Orange <br>
                        California, US <br>
                        Phone: 800 123 3456 <br>
                        Fax: 800 123 3456 <br>
                        Email: <a href="mailto:info@example.com">info@example.com</a>
                    </address>                
                </div>            
            </div>
            <div class="col-xs-6 text-right">
                <ul class="list-unstyled invoice-total-info">
                    <li><strong>Sub - Total Amount:</strong> $109365</li>
                    <li><strong>Discount:</strong> 14.8%</li>
                    <li><strong>VAT ($6):</strong> $8371</li>
                    <li><strong>Grand Total:</strong> $101486</li>
                </ul>
                <button id="print"class="btn-u sm-margin-bottom-10" onclick="javascript:window.print();"><i class="fa fa-print"></i> Print</button>            
                <button class="btn-u">Submit The Invoice</button>            
            </div>
        </div>
        <!--End Invoice Footer-->
    </div><!--/container-->		
    <!--=== End Content Part ===-->

  
{include file='common/betterFooter.tpl'}