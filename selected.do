graph twoway (line  frcmediumurslow period) ///
	(line  frcmediumurmedium period) ///
	(line  frcmediumurfast period), ///
	ytitle("Average Score") xtitle("Time Period") /// 
	ylabel(, angle(horizontal)) yscale(titlegap(*+10)) ///
	title("Variation by Learning Rate among Aligned Units") ///
	legend(cols(1) label(1 Agent Learning = Slow) label(2 Agent Learning = Medium) label(3 Agent Learning = Fast))
graph2tex, epsfile(frcmedium1) ht(5) caption(Field is Right of Center with Medium Learning Rate)

// Verify this in excel and put it up in the paper
graph twoway (connected  frcmediumulslow period if period <= 20) ///
	(connected  frcmediumucslow period if period <= 20) ///
	(line  frcmediumulfast period if period <= 20) ///
	(line  frcmediumucfast period if period <= 20), ///
	ytitle("Average Score") xtitle("Time Period") /// 
	ylabel(, angle(horizontal)) yscale(titlegap(*+10)) ///
	title("Variation by Alignment and Learning Rate") ///
	legend(label(1 Adversely Aligned Slow Learner)  label(2 Agnostic Slow Learner) label(3 Adversely Aligned Fast Learner)  label(4 Agnostic Fast Learner))
graph2tex, epsfile(frcmedium2d) ht(5) caption(Field is Right of Center with Medium Learning Rate)

// Main result, that in Fields with Medium Learning rate and a Right of Center positioning Adversely Aligned Slow Learning agents come out better than the others
graph twoway (connected  frcmediumulslow period if period <= 20) ///
	(connected  frcmediumucslow period if period <= 20) ///
	(line  frcslowulslow period if period <= 20) ///
	(line  frcslowucslow period if period <= 20), ///
	ytitle("Average Score") xtitle("Time Period") /// 
	ylabel(, angle(horizontal)) yscale(titlegap(*+10)) ///
	title("Scores across Slow and Medium Learning Rate Fields") ///
	legend(label(1 Adversely Aligned, Slow (Medium))  label(2 Agnostic, Slow (Medium)) label(3 Adversely Aligned, Slow (Slow))  label(4 Agnostic, Slow (Slow)))
graph2tex, epsfile(frcmedium3a) ht(5) caption(Field is Right of Center)
