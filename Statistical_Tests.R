#Define convenience functions
printf <- function(...) cat(sprintf(...))

# Define table data
none_informed = 69
none_uninformed = 41
replied_no_informed =  60
replied_no_uninformed = 77
replied_some_informed = 22
replied_some_uninformed = 29

#First statistical question
print("Statistical Question 1: Do the response rates btw informed and uninformed group differ significantly? (using Wilcox rank sum test)")
print("Hypothesis: Response rates of the informed and uninformed group are not statistically different.")

replied_informed = c(rep(1,times=(replied_no_informed+replied_some_informed)), rep(0, times=none_informed))
replied_uninformed = c(rep(1,times=(replied_no_uninformed+replied_some_uninformed)), rep(0, times=none_uninformed))

printf("FYI: replied_informed = c(rep(1,times=%i), rep(0, times=%i))\n", replied_no_informed+replied_some_informed, none_informed)
printf("FYI: replied_uninformed = c(rep(1,times=%i), rep(0, times=%i))\n", replied_no_uninformed+replied_some_uninformed, none_uninformed)

wilcox.test( replied_informed,replied_uninformed,correct = FALSE)

print("If the p-value above is less than 0.05, we reject the hypothesis and conclude the means of their response rates are significantly different.")

#Second statistical question
print("Statistical Question 2: Does knowing that they are in a reproducibility study change their code disclosure behaviors?")
print("two groups(informed and uninformed) and three types of responses(No Response, Replied but not code or data, Replied with at least some code or data) (using Chi-Square Test for Independence)")

disclosure = data.frame("No response"=c(none_informed,none_uninformed),"Replied but no code or data"=c(replied_no_informed,replied_no_uninformed), "Replied with at least some code or data"=c(replied_some_informed,replied_some_uninformed), row.names = c("Informed", "Uninformed"))
printf("FYI: disclosure = data.frame(\"No response\"=c(%i,%i),\"Replied but no code or data\"=c(%i,%i), \"Replied with at least some code or data\"=c(%i,%i), row.names = c(\"Informed\", \"Uninformed\"))\n", none_informed, none_uninformed, replied_no_informed, replied_no_uninformed, replied_some_informed, replied_some_uninformed)
chisq.test(disclosure)

print("If the p-value above is less than 0.05, we reject the hypothesis and conclude knowing authors' awareness of being or not in a reproducibility study can help predict  authors' code disclosure behaviors.")


#Third statistical question
print("Statistical Question 3: Does the code disclosure rate between the informed and uninformed group differ significantly? (using Wilcox rank sum test)")
print("Hypothesis: Code disclosure rates of the informed and uninformed group are the same.")

code_disclosed_informed = c(rep(1,times=replied_some_informed), rep(0, times=(none_informed+replied_no_informed)))
code_disclosed_uninformed = c(rep(1,times=replied_some_informed), rep(0, times=(none_uninformed+replied_no_uninformed)))

printf("FYI: code_disclosed_informed = c(rep(1,times=%i), rep(0, times=%i))\n", replied_some_informed, none_informed+replied_no_informed)
printf("FYI: code_disclosed_uninformed = c(rep(1,times=%i), rep(0, times=%i))\n", replied_some_uninformed, none_uninformed+replied_no_uninformed)

wilcox.test( code_disclosed_informed,code_disclosed_uninformed,correct = FALSE)

print("If the p-value above is greater than 0.05, we fail to reject the null hypothesis, the disclosure rates btw the two groups are not significantly different.")
