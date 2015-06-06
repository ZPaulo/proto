
{include file='common/betterHeader.tpl'}
		<!--=== Profile ===-->
		<div class="container content profile">
			<div class="row">
				<!--Left Sidebar-->
				<div class="col-md-3 md-margin-bottom-40">

					<ul class="list-group sidebar-nav-v1 margin-bottom-40"
						id="sidebar-nav-1">
						<li class="list-group-item"><a href="page_profile_me.php"><i
								class="fa fa-user"></i> Profile</a></li>
						<li class="list-group-item "><a
							href="page_profile_history.php"><i class="fa fa-history"></i>
								History</a></li>
						<li class="list-group-item active"><a
							href="page_profile_settings.php"><i class="fa fa-cog"></i>
								Settings</a></li>
					</ul>


					<!--End Datepicker-->
				</div>

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body margin-bottom-20">
						<div class="tab-v1">
							<ul class="nav nav-justified nav-tabs">
								<li class="active"><a data-toggle="tab" href="#profile">Edit
										Profile</a></li>
								<li><a data-toggle="tab" href="#passwordTab">Change
										Password</a></li>
								<li><a data-toggle="tab" href="#payment">Payment
										Options</a></li>
								<li><a data-toggle="tab" href="#settings">Notification
										Settings</a></li>
							</ul>
							<div class="tab-content">
								<div id="profile" class="profile-edit tab-pane fade in active">
									<h2 class="heading-md">Manage your Name, ID and Email
										Addresses.</h2>
									<p>Below are the name and email addresses on file for your
										account.</p>
									<br>
									<dl class="dl-horizontal">
										<dt>
											<strong>Your name </strong>
										</dt>
										<dd>
											{$user.nome} <span> <a class="pull-right" href="#">
													<i class="fa fa-pencil"></i>
											</a>
											</span>
										</dd>
										<hr>
										<dt>
											<strong>Primary Email Address </strong>
										</dt>
										<dd>
											{$user.email} <span> <a class="pull-right"
												href="#"> <i class="fa fa-pencil"></i>
											</a>
											</span>
										</dd>
										<hr>
										<dt>
											<strong>Phone Number </strong>
										</dt>
										<dd>
											{$user.ntelemovel} <span> <a class="pull-right"
												href="#"> <i class="fa fa-pencil"></i>
											</a>
											</span>
										</dd>
										<hr>
										<dt>
											<strong>Address </strong>
										</dt>
										<dd>
											{$user.morada} <span> <a class="pull-right" href="#">
													<i class="fa fa-pencil"></i>
											</a>
											</span>
										</dd>
										<hr>
									</dl>
									<button type="button" class="btn-u btn-u-default">Cancel</button>
									<button type="button" class="btn-u">Save Changes</button>
									<button type="button" class="btn-u btn-u-red">Eliminate Account</button>
								</div>

								<div id="passwordTab" class="profile-edit tab-pane fade">
									<h2 class="heading-md">Manage your Security Settings</h2>
									<p>Change your password.</p>
									<br>
									<form class="sky-form" id="sky-form" action="#">
										<!--Checkout-Form-->
										<section>
											<label class="input"> <input type="password" name="name"
												placeholder="password">
											</label>
											<label class="input"> <input type="password" name="name"
												placeholder="confirm password">
											</label>
										</section>

										
										<button type="button" class="btn-u btn-u-default">Cancel</button>
										<button class="btn-u" type="submit">Save Changes</button>
										<!--End Checkout-Form-->
									</form>
								</div>

								<div id="payment" class="profile-edit tab-pane fade">
									<h2 class="heading-md">Manage your Payment Settings</h2>
									<p>Below are the payment options for your account.</p>
									<br>
									<form class="sky-form" id="sky-form" action="#">
										<!--Checkout-Form-->
										<section>
											<div class="inline-group">
												<label class="radio"><input type="radio" checked=""
													name="radio-inline"><i class="rounded-x"></i>Visa</label> <label
													class="radio"><input type="radio"
													name="radio-inline"><i class="rounded-x"></i>MasterCard</label>
												<label class="radio"><input type="radio"
													name="radio-inline"><i class="rounded-x"></i>PayPal</label>
											</div>
										</section>

										<section>
											<label class="input"> <input type="text" name="name"
												placeholder="Name on card">
											</label>
										</section>

										<div class="row">
											<section class="col col-10">
												<label class="input"> <input type="text" name="card"
													id="card" placeholder="Card number">
												</label>
											</section>
											<section class="col col-2">
												<label class="input"> <input type="text" name="cvv"
													id="cvv" placeholder="CVV2">
												</label>
											</section>
										</div>

										<div class="row">
											<label class="label col col-4">Expiration date</label>
											<section class="col col-5">
												<label class="select"> <select name="month">
														<option disabled="" selected="" value="0">Month</option>
														<option value="1">January</option>
														<option value="1">February</option>
														<option value="3">March</option>
														<option value="4">April</option>
														<option value="5">May</option>
														<option value="6">June</option>
														<option value="7">July</option>
														<option value="8">August</option>
														<option value="9">September</option>
														<option value="10">October</option>
														<option value="11">November</option>
														<option value="12">December</option>
												</select> <i></i>
												</label>
											</section>
											<section class="col col-3">
												<label class="input"> <input type="text"
													placeholder="Year" id="year" name="year">
												</label>
											</section>
										</div>
										<button type="button" class="btn-u btn-u-default">Cancel</button>
										<button class="btn-u" type="submit">Save Changes</button>
										<!--End Checkout-Form-->
									</form>
								</div>

								<div id="settings" class="profile-edit tab-pane fade">
									<h2 class="heading-md">Manage your Notifications.</h2>
									<p>Below are the notifications you may manage.</p>
									<br>
									<form class="sky-form" id="sky-form3" action="#">
										
										<label class="toggle"><input type="checkbox"
											{if $news}checked="" {/if} name="checkbox-toggle-1"><i></i>Receive
											our monthly newsletter</label>
										<br>
										<button type="button" class="btn-u btn-u-default">Reset</button>
										<button class="btn-u" type="submit">Save Changes</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Profile Content -->
			</div>
			<!--/end row-->
		</div>
		<!--=== End Profile ===-->

	{include file='common/betterFooter.tpl'}
		