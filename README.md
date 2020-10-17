#  Running the Xclingo Extension to Text2ALM

**1: Download and start up Tex2ALM servers**
-- Follow the instructions found [here](https://github.com/cdolson19/Text2ALM/wiki), however, no need to run the Text2ALM commands.
**2:Execute xclingo.sh in Text2ALM root**
--The arguments will be the natural language .txt file you wish to analyze and the trace rules .lp file you wish to use to define trace rules
    
--Example: ./xclingo.sh TestFiles/test1.txt trace-rules-1.lp
    
--The output will be found in the XclingoOutput folder and will be of file extension type .tp.xlp