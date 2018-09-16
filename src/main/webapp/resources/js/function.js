$(document).ready(function() {
	alert("function js loaded");

	$('#select_city2').on('change',	function() {
		$.ajax({
			type : "POST",
			cache : false,
			url : "http://localhost:8088/Elections/refdata/election_data_state",
			data : null,
			success : function(response) {
				var stateList=JSON.parse(response);


				if (stateList != '') {
					$.each(stateList, function(i, val) {
						response=response+"<option value="+stateList[i].id+">"+ stateList[i].name+"</optioin>";
					});
					$("#select_city4").html(response);
					$("#select_city4").show();
				} else {
					$("#select_city4").html(response);
					$("#select_city4").hide();
					$("#select_city6").hide();
				}
			},
			error: function(response) {
				alert("Failed");
			},

		});
	});

	getStateData: (function() {
		//if ($("#select_city2").length > 0)

	});

	getCityData: (function() {
		$('#select_city4').on(
				'change',
				function() {
					// alert (this.value);
					// $('#select_city4').html('<option
					// val="1">One</option>');
					$.ajax({
						type : "POST",
						cache : false,
						url : "../getdata.php", /*
						 * The country
						 * id will be
						 * sent to this
						 * file
						 */
						data : "Cityid=" + this.value
						+ "&action=areaccityarea",
						success : function(msg) {
							// alert (msg);

							if (msg != '') {
								$("#select_city6").html(msg);
								$("#select_city6").show();
							} else {
								$("#select_city6").html(msg);
								$("#select_city6").hide();
							}
						}
					});
				});
	});

	emaild: (function() {
		var electiontypea = $("#email").val();
		$.ajax({
			type : "POST",
			cache : false,
			url : "demoemail.php",
			data : "email=" + electiontypea
			+ "&action=electionyear",
			success : function(msg) {
				if (msg != '') {
					$(".erroremail").html(msg);
					$("#email1").val('');
				} else {
					$(".erroremail").html('');
					$("#email1").val(msg);
				}
			}
		});
	});

	printDateAndTime: (function() {
		var date = new Date();
		var months = [ "JAN", "FEB", "MAR", "APR", "MAY",
			"JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" ];
		var val = date.getDate() + " "
		+ months[date.getMonth()] + " "
		+ date.getFullYear();
		$("#printDate").text(val);
		var dt = new Date();
		var hours = date.getHours() > 12 ? date.getHours() - 12
				: date.getHours();
		var am_pm = date.getHours() >= 12 ? "PM" : "AM";
		hours = hours < 10 ? "0" + hours : hours;
		var minutes = date.getMinutes() < 10 ? "0"
				+ date.getMinutes() : date.getMinutes();
				var time = hours + ":" + minutes + ":" + am_pm;
				$("#printTime").text(time);

	});

	getPartyDetails: (function() {
		var availableTags2 = [ "AAP Party", "BJP",
			"Indian National Congress", "NCP Party", "CPI",
			"Bahujan Samaj Party",
			"All India Trinamool Congress",
			"Rashtrawadi Congress Party" ];
		$("#tags2").autocomplete({
			source : availableTags2
		});
	});

	getElectionData: (function() {
		$
		.ajax({
			type : "POST",
			cache : false,
			url : "http://www.risingelection.com/archivegetdata.php",
			/* The country id will be sent to this file */
			data : "action=election" + '',
			success : function(msg) {
				// alert (msg);
				$("#candidates").html("");
				$("#candidates").html(msg);
			}
		});
	});

	getElectionDetails: (function() {
		$('#year').on(
				'change',
				function() {
					var electiontypea = $(
					"#select_city3 option:selected")
					.val();
					$.ajax({
						type : "POST",
						cache : false,
						url : "archivegetdata.php",
						data : "electiontypeid="
							+ electiontypea + "&year="
							+ this.value
							+ "&action=electionyear",
							success : function(msg) {
								$("#candidates").html("");
								$("#candidates").html(msg);
							}
					});
				});
	});

	getDataByStateId: (function() {

		$('#stateselect').on(
				'change',
				function() {
					var stateid = $(
					"#stateselect option:selected")
					.val();
					$.ajax({
						type : "POST",
						cache : false,
						url : "archivegetdata.php",
						data : "state_id=" + stateid
						+ "&action=state",
						success : function(msg) {
							// alert (msg);
							$("#constituency").html(msg);
						}
					});

				});
	});

	getconstituency: (function() {
		$('#constituency')
		.on(
				'change',
				function() {
					var stateid = $(
					"#stateselect option:selected")
					.val();
					$
					.ajax({
						type : "POST",
						cache : false,
						url : "http://localhost:8088/Elections/refdata/election.data.state",
						data : "constituency_id="
							+ stateid
							+ "&action=constituency",
							success : function(msg) {
								$("#areaselect")
								.html(msg);
							}
					});
				});
	});

	yahooApi: (function() {
		var queryURL = "https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202487889&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys/";

		$.getJSON(queryURL, function(data) {

			var results = data.query.results
			var firstResult = results.channel.item.condition
			console.log(firstResult);

			var location = 'Unknown' // not returned in
				// response
				var temp = firstResult.temp
				var text = firstResult.text

				$('#output').append(temp + '&#x2109;');

		})
	});

	loadTags: (function() {
		var availableTags = [
			"Municipal Corporation Election ",
			"Rajya Sabha", "Assembly Election",
			"Lok Sabha", "Municipal Councils",
			"District Councils" ];
		$("#tags").autocomplete({
			source : availableTags

		});
	});

	loadTags2: (function() {
		var availableTags2 = [ "AAP Party", "BJP",
			"Indian National Congress", "NCP Party", "CPI",
			"Bahujan Samaj Party",
			"All India Trinamool Congress",
			"Rashtrawadi Congress Party" ];
		$("#tags2").autocomplete({
			source : availableTags2
		});
	});

	loadTags3: (function() {
		var availableTags3 = [
			"Ahmednagar Municipal Corporation",
			"Akola Municipal Corporation",
			"Amravati Municipal Corporation",
			"Aurangabad Municipal Corporation",
			"Bhiwandi-Nizampur Municipal Corporation",
			"Chandrapur Municipal Corporation",
			"Dhule Municipal Corporation",
			"Kalyan-Dombivli Municipal Corporation",
			"Kolhapur Municipal Corporation",
			"Malegaon Municipal Corporation",
			"Mira-Bhayandar Municipal Corporation",
			"Nagpur Municipal Corporation",
			"Nanded-Waghala Municipal Corporation",
			"Nashik Municipal Corporation",
			"Panvel Municipal Corporation",
			"Parbhani Municipal Corporation",
			"Pimpri-Chinchwad Municipal Corporation",
			"Pune Municipal Corporation",
			"Solapur Municipal Corporation",
			"Thane Municipal Corporation",
			"Vasai-Virar City Municipal Corporation" ];
		$("#tags3").autocomplete({
			source : availableTags3
		});
		var availableTags4 = [ "Nana Kate" ];
		$("#tags4").autocomplete({
			source : availableTags4
		});
	});

	validateFrom: (function() {
		$("#ragisterform").validate(
				{
					rules : {
						email1 : {
							required : true
						}

					},
					highlight : function(a) {
						$(a).closest(".form-group")
						.removeClass("success")
						.addClass("control-label")
					},

					success : function(a) {
						a.closest(".form-group").removeClass(
						"error").addClass("success")
					},
				})
	});

	poll: (function(type, id) {
		var nvar = '';
		if (nvar == '') {
			$("#myModal").modal('show');
		} else {
			$.ajax({
				type : "POST",
				url : "getdata.php", 
				data : "id=" + id + "&type=" + type
				+ "&action=poll",
				success : function(msg) {
					$("#pollclick").html(msg).fadeIn(1000);
					//alert(msg);
				}
			});
		}
	});
});
