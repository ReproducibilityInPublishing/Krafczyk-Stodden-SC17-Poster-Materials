# Assessing the Availability of Source Code in Computational Physics

This package contains scripts for running the statistical tests underpinning our poster, and for producing the QR codes embedded in the poster.

## Citing this work

Please cite as: Matthew S. Krafczyk, V. Stodden, Y. Zheng, and D. Wong. 2017. Assessing the Availability of Source Code in Computational Physics. In Proceedings of Supercomputing 2017 Conference, Denver, Colorado USA, November 2017 (SC'17)

You can also find a bibtex version of this citation in this repository called `cite.bib`. This will also be updated when the proceedings have officially been published with the correct citations.

## Statistical Tests

To execute the statistical tests, install [`R`](https://www.r-project.org/about.html) and run the following from the command line:

```{bash}
Rscript ./Statistical_Tests.R
```

## QR Code

To create the QR code, install the [`qrencode`](https://fukuchi.org/works/qrencode/) program and run the following script:

```{bash}
./Create_QR_Code.sh
```

## Link Summary

You can get an online version of the poster [here](https://docs.google.com/presentation/d/10wd2mxLdLmTVCzGUopNzX9YzbJJyaXMcPVeCh3qDcA0/edit?usp=sharing)

You can get an online version of the article classification table [here](https://docs.google.com/spreadsheets/d/1Hex278CPiRaunCQM2J2tyDCJAEsXCqLm910Jhls_2M4/edit?usp=sharing)

You can get an online version of the email classification table [here](https://docs.google.com/spreadsheets/d/1anRalK75M3zIed2jRQ6KLRN9rFKxX9wrLHq5qwm93Ds/edit?usp=sharing)
