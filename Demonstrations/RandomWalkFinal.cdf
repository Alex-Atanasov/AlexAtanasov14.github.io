(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     13477,        303]
NotebookOptionsPosition[     13838,        291]
NotebookOutlinePosition[     14373,        314]
CellTagsIndexPosition[     14330,        311]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["1-D Brownian Motion", "Title", "PluginEmbeddedContent"],

Cell[TextData[{
 "This module explores 1-dimensional Brownian motion, a central idea in the \
study of biological systems and randomness. A particle, at each point has a p \
probability of going \[OpenCurlyDoubleQuote]up\[CloseCurlyDoubleQuote] and a \
1-p probability of going \[OpenCurlyDoubleQuote]down\[CloseCurlyDoubleQuote]. \
As time progresses, this particle traces out a random path like the ones \
shown below.\n\nYou can change this probability (default one half) and see \
how the paths begin to drift away. You can also increase the number of time \
steps to see the further evolution, or increase the number of sample paths. \n\
\nBy checking \[OpenCurlyDoubleQuote]show final distribution\
\[CloseCurlyDoubleQuote], you can see how the expected distance away from the \
initial position looks like a normal distribution, and see how as you \
increase the number of sample paths, the average final distances begin to \
look more and more like a normal distribution. By increasing the number of \
steps, the standard deviation of this distribution increases. \n\nUnchecking \
the first button and moving on to \[OpenCurlyDoubleQuote]show means\
\[CloseCurlyDoubleQuote] shows a thick dark line that is the average over all \
sample particle paths. You can see that this average stays close to zero, and \
comes closer to being a flat line as we increase the number of sample paths. \
\n\nFinally, \[OpenCurlyDoubleQuote]show net displacement\
\[CloseCurlyDoubleQuote] demonstrates how the average ",
 StyleBox["squared",
  FontSlant->"Italic"],
 " distance away from zero increases linearly. "
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`dist$$ = False, $CellContext`means$$ = 
    False, $CellContext`n$$ = 201, $CellContext`nreps$$ = 
    16, $CellContext`p$$ = 0.5, $CellContext`square$$ = True, Typeset`show$$ =
     True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`dist$$], False, 
       Style[
       "Show Final Place Distribution", FontSize -> 14, FontFamily -> 
        "Helvetica"]}, {False, True}}, {{
       Hold[$CellContext`means$$], False, 
       Style[
       "Show Means                          ", FontSize -> 14, FontFamily -> 
        "Helvetica"]}, {False, True}}, {{
       Hold[$CellContext`square$$], False, 
       Style[
       "Show Net Displacement        ", FontSize -> 14, FontFamily -> 
        "Helvetica"]}, {False, True}}, {{
       Hold[$CellContext`p$$], 0.5, 
       Style[
       "Probability                  ", FontSize -> 14, FontFamily -> 
        "Helvetica"]}, 0, 1, 0.05}, {{
       Hold[$CellContext`nreps$$], 3, 
       Style[
       "Number of repetitions", FontSize -> 14, FontFamily -> "Helvetica"]}, 
      1, 128, 1}, {{
       Hold[$CellContext`n$$], 128, 
       Style[
       "Number of steps        ", FontSize -> 14, FontFamily -> "Helvetica"]},
       128, 512, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1]}, {
          Manipulate`Place[2]}, {
          Manipulate`Place[3]}, {
          Manipulate`Place[4], 
          Spacer[10], 
          Style[
           Dynamic[$CellContext`p$$], FontSize -> 14, FontFamily -> 
           "Helvetica"]}, {
          Manipulate`Place[5], 
          Spacer[10], 
          Style[
           Dynamic[$CellContext`nreps$$], FontSize -> 14, FontFamily -> 
           "Helvetica"]}, {
          Manipulate`Place[6], 
          Spacer[10], 
          Style[
           Dynamic[$CellContext`n$$], FontSize -> 14, FontFamily -> 
           "Helvetica"]}, {
          Button[
           Style[
           "New random walk", FontSize -> 14, FontFamily -> "Helvetica"], 
           Increment[$CellContext`seed]]}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {148., 152.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`dist$31837925$$ = 
    False, $CellContext`means$31837926$$ = 
    False, $CellContext`square$31837927$$ = False, $CellContext`p$31837928$$ =
     0, $CellContext`nreps$31837929$$ = 0, $CellContext`n$31837930$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`dist$$ = False, $CellContext`means$$ = 
        False, $CellContext`n$$ = 128, $CellContext`nreps$$ = 
        3, $CellContext`p$$ = 0.5, $CellContext`square$$ = False}, 
      "ControllerVariables" :> {
        Hold[$CellContext`dist$$, $CellContext`dist$31837925$$, False], 
        Hold[$CellContext`means$$, $CellContext`means$31837926$$, False], 
        Hold[$CellContext`square$$, $CellContext`square$31837927$$, False], 
        Hold[$CellContext`p$$, $CellContext`p$31837928$$, 0], 
        Hold[$CellContext`nreps$$, $CellContext`nreps$31837929$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$31837930$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (
       SeedRandom[$CellContext`seed]; $CellContext`randomWalk = Table[
          Part[
           Part[
            Normal[
             RandomFunction[
              RandomWalkProcess[$CellContext`p$$], {0, $CellContext`n$$}]], 
            1], 
           Span[1, All], 2], {$CellContext`j, 
           1, $CellContext`nreps$$}]; $CellContext`randomWalk2 = 
        Table[Part[$CellContext`randomWalk, $CellContext`k]^2, \
{$CellContext`k, 1, $CellContext`nreps$$}]; $CellContext`means1 = Mean[
          Part[$CellContext`randomWalk, 
           Span[1, $CellContext`nreps$$]]]; $CellContext`means2 = Mean[
           Part[$CellContext`randomWalk2, 
            Span[1, $CellContext`nreps$$]]] - $CellContext`means1^2; 
       Which[$CellContext`dist$$, $CellContext`means$$ = 
          False; $CellContext`square$$ = False; Show[
           
           Plot[(2 (Exp[((-$CellContext`x^2)/2)/$CellContext`n$$]/
              Sqrt[(2 Pi) $CellContext`n$$])) $CellContext`nreps$$, \
{$CellContext`x, (-3) Sqrt[$CellContext`n$$], 3 Sqrt[$CellContext`n$$]}, 
            PlotRange -> {{(-3) Sqrt[$CellContext`n$$], 3 
               Sqrt[$CellContext`n$$]}, Automatic}, PlotStyle -> {{Orange, 
               Thickness[0.004]}}, Frame -> True, AspectRatio -> 0.7, 
            FrameLabel -> {"Displacement", "Counts"}, FrameTicks -> Automatic,
             LabelStyle -> {
              Directive[16], FontFamily -> "Helvetica"}, 
            ImageSize -> {600, 300}], 
           Histogram[
            Part[$CellContext`randomWalk, 
             Span[1, $CellContext`nreps$$], $CellContext`n$$], {2}]], 
         And[$CellContext`square$$, $CellContext`means$$], 
         Show[
          
          Plot[((4 $CellContext`p$$) (
             1 - $CellContext`p$$)) $CellContext`t, {$CellContext`t, 
            0, $CellContext`n$$}, PlotStyle -> {Cyan, Thick}], 
          
          ListPlot[$CellContext`means2, PlotRange -> All, Joined -> True, 
           PlotStyle -> {{Orange, Thick}}, Frame -> True, AspectRatio -> 0.7, 
           FrameLabel -> {"Number of steps", "Net Displacement"}, FrameTicks -> 
           Automatic, LabelStyle -> {
             Directive[16], FontFamily -> "Helvetica"}, 
           ImageSize -> {600, 300}]], $CellContext`square$$, 
         Show[
          
          ListPlot[$CellContext`means2, PlotRange -> All, Joined -> True, 
           PlotStyle -> {{Orange, Thick}}, Frame -> True, AspectRatio -> 0.7, 
           FrameLabel -> {"Number of steps", "Net Displacement"}, FrameTicks -> 
           Automatic, LabelStyle -> {
             Directive[16], FontFamily -> "Helvetica"}, 
           ImageSize -> {600, 
            300}]], $CellContext`means$$, $CellContext`dist$$ = False; Show[
           
           ListPlot[$CellContext`randomWalk, 
            PlotRange -> {{
              0, $CellContext`n$$}, {(-2) Sqrt[$CellContext`n$$], 2 
               Sqrt[$CellContext`n$$]}}, Joined -> True, PlotStyle -> {{
               Thickness[0.002]}}, Frame -> True, AspectRatio -> 0.7, 
            FrameLabel -> {"Number of steps", "Displacement"}, 
            LabelStyle -> {
              Directive[16], FontFamily -> "Helvetica"}, 
            ImageSize -> {600, 300}], 
           
           ListPlot[$CellContext`means1, PlotRange -> Automatic, Joined -> 
            True, PlotStyle -> {{Black, Thick}, {Black, Thick}}, Frame -> 
            True, AspectRatio -> 0.7, FrameLabel -> {"", ""}, FrameTicks -> 
            Automatic, LabelStyle -> {
              Directive[16], FontFamily -> "Helvetica"}, 
            ImageSize -> {600, 300}]], 
         And[
          Not[$CellContext`dist$$], 
          Not[$CellContext`means$$], 
          Not[$CellContext`square$$]], 
         ListPlot[$CellContext`randomWalk, 
          PlotRange -> {{
            0, $CellContext`n$$}, {(-2) Sqrt[$CellContext`n$$], 2 
             Sqrt[$CellContext`n$$]}}, Joined -> True, PlotStyle -> {{
             Thickness[0.002]}}, Frame -> True, AspectRatio -> 0.7, 
          FrameLabel -> {"Number of steps", "Displacement"}, LabelStyle -> {
            Directive[16], FontFamily -> "Helvetica"}, 
          ImageSize -> {600, 300}]]), 
      "Specifications" :> {{{$CellContext`dist$$, False, 
          Style[
          "Show Final Place Distribution", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, {False, True}, AppearanceElements -> {}, 
         ControlPlacement -> 1}, {{$CellContext`means$$, False, 
          Style[
          "Show Means                          ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, {False, True}, AppearanceElements -> {}, 
         ControlPlacement -> 2}, {{$CellContext`square$$, False, 
          Style[
          "Show Net Displacement        ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, {False, True}, AppearanceElements -> {}, 
         ControlPlacement -> 3}, {{$CellContext`p$$, 0.5, 
          Style[
          "Probability                  ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, 0, 1, 0.05, AppearanceElements -> {}, 
         ControlPlacement -> 4}, {{$CellContext`nreps$$, 3, 
          Style[
          "Number of repetitions", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, 1, 128, 1, AppearanceElements -> {}, 
         ControlPlacement -> 5}, {{$CellContext`n$$, 128, 
          Style[
          "Number of steps        ", FontSize -> 14, FontFamily -> 
           "Helvetica"]}, 128, 512, 1, AppearanceElements -> {}, 
         ControlPlacement -> 6}, 
        Grid[{{
           Manipulate`Place[1]}, {
           Manipulate`Place[2]}, {
           Manipulate`Place[3]}, {
           Manipulate`Place[4], 
           Spacer[10], 
           Style[
            Dynamic[$CellContext`p$$], FontSize -> 14, FontFamily -> 
            "Helvetica"]}, {
           Manipulate`Place[5], 
           Spacer[10], 
           Style[
            Dynamic[$CellContext`nreps$$], FontSize -> 14, FontFamily -> 
            "Helvetica"]}, {
           Manipulate`Place[6], 
           Spacer[10], 
           Style[
            Dynamic[$CellContext`n$$], FontSize -> 14, FontFamily -> 
            "Helvetica"]}, {
           Button[
            Style[
            "New random walk", FontSize -> 14, FontFamily -> "Helvetica"], 
            Increment[$CellContext`seed]]}}, Alignment -> Left]}, 
      "Options" :> {
       ContinuousAction -> False, 
        TrackedSymbols -> {False, False, 1, 128, 137, False}, 
        SynchronousUpdating -> False}, "DefaultOptions" :> {}],
     ImageSizeCache->{645., {273., 278.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
},
WindowSize->{937.3666666666667, 903.59},
Visible->True,
AuthoredSize->{937, 904},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.4 for Mac OS X x86 (32-bit, 64-bit Kernel) (February 25, \
2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 61, 0, 52, "Title"],
Cell[1550, 37, 1643, 24, 282, "Text"],
Cell[3196, 63, 10626, 225, 553, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature IvDpSVIC4@c5oBKu11S2Y8p8 *)
