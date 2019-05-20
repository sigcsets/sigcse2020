---
title: Creating PDF Documents
---

Adobe Portable Document Format (PDF) documents are a standardized and
convenient method to exchange data files without affecting the original
appearance. SIGCSE will accept electronic submissions of papers only in
this format.

## How Can I Convert My (Word Processing) Documents to PDF Format?

You have a number of options for converting your Word, LaTeX, or
Postscript files into Adobe PDF.

-   If you are using Google Docs, selecting print produces a PDF file.
    Your version of Microsoft Word may allow you to save as a PDF
    document. Other word processing software may have similar features.
    
-   Apple Mac OS X includes print to PDF for all programs.

-   [PrimoPDF](http://www.primopdf.com) is a free program that installs
    like a printer and saves your file as a PDF document.
    
-   If you already have Adobe Acrobat installed on your computer refer
    to your software documentation for instructions on choosing PDF
    Writer as your printer. Instead of printing your document, the
    software will create a PDF file.
    
-   Export your document from within OpenOffice, available at
    [openoffice.org](http://openoffice.org).
    
-   Adobe has an online service to convert your Word and
    other formatted documents into Adobe PDF format ([Create Adobe PDF
    Online](https://createpdf.acrobat.com/)). The converted file is
    either sent to you via e-mail or available through FTP. You may
    register for a trial membership of the Adobe Online service and
    convert five files at no charge. This is our least-recommended
    option because the conversion will not embed the fonts and the
    resulting document may not look good on other machines.


## How Can I Convert My LaTeX Documents to PDF Format?

There are two primary ways to go from LaTeX to PDF.

-   Generate your dvi file from your LaTeX source. Run dvips on the dvi
    file to produce a postscript file. (dvips can be used to generate
    postscript from the dvi file for direct output to a postscript
    printer or to a file.) Then use a postscript utility such as ps2pdf
    to convert the postscript file into pdf. The following commands will
    produce a postscript file with type 3 fonts, which are more readable
    onscreen:

    > dvips -Ppdf -G0 filename.dvi -o filename.ps 
    
    >  ps2pdf -dPDFsettings=/prepress filename.ps filename.pdf

-   There are versions of pdfTeX and pdfLaTeX available for most
    platforms. These systems do not generate dvi files from your LaTeX
    source, but generate pdf directly. A standard teTeX (Unix)
    installation of TeX has these available.
	
-	Online LaTeX tools like [ShareLaTeX](https://www.sharelatex.com) or [Overleaf](https://www.overleaf.com/), have the options to save as PDF.
	

## A Mild Disclaimer

SIGCSE does not endorse or otherwise sponsor any of the software mentioned on this page.

There are many, many ways to generate PDFs. However, generating PDFs for publication remains a tricky business, and we recommend you use tools that are known to produce PDFs of high quality, suitable for inclusion in the ACM Digital Library.
