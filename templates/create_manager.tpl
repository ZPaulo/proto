{include file='common/betterHeader.tpl'}

<!--=== Content Part ===-->
<div class="container content">
	<div class="row">


		<!-- Begin Content -->
		<div class="col-md-9">
			<!-- Tabs -->
			<div class="tab-v1">

				<div class="tab-content">
					<!-- Success Forms -->
					<div class="tab-pane fade in active" id="home-1">
						<form action="{$BASE_URL}actions/users/register_manager.php" method="post" class="sky-form">
							<header>Insert Manager Info</header>

							<fieldset>
								<section>
									<label class="label">Manager Name</label> <label
										class="input state-success"> <input name="username" type="text">
									</label>
									<div class="note note-success">This is a required field.</div>
								</section>
								<section>
									<label class="label">Manager Password</label> <label
										class="input state-success"> <input type="text" name="password">
									</label>
									<div class="note note-success">This is a required field.</div>
								</section>
								<section>
									<label class="label">Confirm Password</label> <label
										class="input state-success"> <input type="text" name="passwordconf">
									</label>
									<div class="note note-success">This is a required field.</div>
								</section>
								<section>
                        		    <label class="label">Select</label>
                    		        <label class="select">
                	                	<select name = "local">
              	                      		<option value="-1">Choose local</option>
              	                      		{foreach $locals as $local}
              	                      			<option value="{$local.localdestandid}">{$local.nome}</option>
              	                      		{/foreach}
                                		</select>
                                	<i></i>
                            		</label>
                        		</section>


							</fieldset>



							<footer>
								<button type="submit" class="btn-u btn-u-default">Submit</button>
								<button type="button" class="btn-u"
									onclick="window.history.back();">Back</button>
							</footer>
						</form>
						<!--/ Success states for elements -->
					</div>
					<!-- End Success Forms -->


					<!-- End Disabled Forms -->
				</div>
			</div>
			<!-- End Tabs-->
		</div>
		<!-- End Content -->
	</div>
</div>
<!--/container-->
<!--=== End Content Part ===-->
	{include file='common/betterFooter.tpl'}
