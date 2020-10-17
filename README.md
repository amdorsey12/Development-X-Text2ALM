# Development-X-Text2ALM

Text2ALM is a separate repo found [here](https://github.com/cdolson19/Text2ALM).

The experimental directory contains experimental clingo programs and xclingo trace rule files along with xlcingo output files. 

The goal of this repository is to track development towards a new system that synthesizes Text2ALM with [Xclingo](https://github.com/bramucas/xclingo) to provide rich explanations on answer sets derived from plain text input.

In addition, we will want to be able to input questions as input and obtain answers in plain language.

#  Running the Xclingo Extension to Text2ALM

**1: Download and start up Tex2ALM servers**
-- Follow the instructions found [here](https://github.com/cdolson19/Text2ALM/wiki), however, no need to run the Text2ALM commands.
**2:Execute xclingo.sh in Text2ALM root**
--The arguments will be the natural language .txt file you wish to analyze and the trace rules .lp file you wish to use to define trace rules
    
--Example: ./xclingo.sh TestFiles/test1.txt trace-rules-1.lp
    
--The output will be found in the XclingoOutput folder and will be of file extension type .tp.xlp