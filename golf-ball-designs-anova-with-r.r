{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "428bee5d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-03-12T02:35:11.404649Z",
     "iopub.status.busy": "2022-03-12T02:35:11.401496Z",
     "iopub.status.idle": "2022-03-12T02:35:11.593980Z",
     "shell.execute_reply": "2022-03-12T02:35:11.594545Z"
    },
    "papermill": {
     "duration": 0.221683,
     "end_time": "2022-03-12T02:35:11.594820",
     "exception": false,
     "start_time": "2022-03-12T02:35:11.373137",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 40 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Design</th><th scope=col>Distance</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Design1</td><td>206.32</td></tr>\n",
       "\t<tr><td>Design1</td><td>207.94</td></tr>\n",
       "\t<tr><td>Design1</td><td>206.19</td></tr>\n",
       "\t<tr><td>Design1</td><td>204.45</td></tr>\n",
       "\t<tr><td>Design1</td><td>209.65</td></tr>\n",
       "\t<tr><td>Design1</td><td>203.81</td></tr>\n",
       "\t<tr><td>Design1</td><td>206.75</td></tr>\n",
       "\t<tr><td>Design1</td><td>205.68</td></tr>\n",
       "\t<tr><td>Design1</td><td>204.49</td></tr>\n",
       "\t<tr><td>Design1</td><td>210.86</td></tr>\n",
       "\t<tr><td>Design2</td><td>217.08</td></tr>\n",
       "\t<tr><td>Design2</td><td>221.43</td></tr>\n",
       "\t<tr><td>Design2</td><td>218.04</td></tr>\n",
       "\t<tr><td>Design2</td><td>224.13</td></tr>\n",
       "\t<tr><td>Design2</td><td>211.82</td></tr>\n",
       "\t<tr><td>Design2</td><td>213.90</td></tr>\n",
       "\t<tr><td>Design2</td><td>221.28</td></tr>\n",
       "\t<tr><td>Design2</td><td>229.43</td></tr>\n",
       "\t<tr><td>Design2</td><td>213.54</td></tr>\n",
       "\t<tr><td>Design2</td><td>214.51</td></tr>\n",
       "\t<tr><td>Design3</td><td>226.77</td></tr>\n",
       "\t<tr><td>Design3</td><td>224.79</td></tr>\n",
       "\t<tr><td>Design3</td><td>229.75</td></tr>\n",
       "\t<tr><td>Design3</td><td>228.51</td></tr>\n",
       "\t<tr><td>Design3</td><td>221.44</td></tr>\n",
       "\t<tr><td>Design3</td><td>223.85</td></tr>\n",
       "\t<tr><td>Design3</td><td>223.97</td></tr>\n",
       "\t<tr><td>Design3</td><td>234.30</td></tr>\n",
       "\t<tr><td>Design3</td><td>219.50</td></tr>\n",
       "\t<tr><td>Design3</td><td>233.00</td></tr>\n",
       "\t<tr><td>Design4</td><td>230.55</td></tr>\n",
       "\t<tr><td>Design4</td><td>227.95</td></tr>\n",
       "\t<tr><td>Design4</td><td>231.84</td></tr>\n",
       "\t<tr><td>Design4</td><td>224.87</td></tr>\n",
       "\t<tr><td>Design4</td><td>229.49</td></tr>\n",
       "\t<tr><td>Design4</td><td>231.10</td></tr>\n",
       "\t<tr><td>Design4</td><td>221.53</td></tr>\n",
       "\t<tr><td>Design4</td><td>235.45</td></tr>\n",
       "\t<tr><td>Design4</td><td>228.35</td></tr>\n",
       "\t<tr><td>Design4</td><td>225.09</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 40 × 2\n",
       "\\begin{tabular}{ll}\n",
       " Design & Distance\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Design1 & 206.32\\\\\n",
       "\t Design1 & 207.94\\\\\n",
       "\t Design1 & 206.19\\\\\n",
       "\t Design1 & 204.45\\\\\n",
       "\t Design1 & 209.65\\\\\n",
       "\t Design1 & 203.81\\\\\n",
       "\t Design1 & 206.75\\\\\n",
       "\t Design1 & 205.68\\\\\n",
       "\t Design1 & 204.49\\\\\n",
       "\t Design1 & 210.86\\\\\n",
       "\t Design2 & 217.08\\\\\n",
       "\t Design2 & 221.43\\\\\n",
       "\t Design2 & 218.04\\\\\n",
       "\t Design2 & 224.13\\\\\n",
       "\t Design2 & 211.82\\\\\n",
       "\t Design2 & 213.90\\\\\n",
       "\t Design2 & 221.28\\\\\n",
       "\t Design2 & 229.43\\\\\n",
       "\t Design2 & 213.54\\\\\n",
       "\t Design2 & 214.51\\\\\n",
       "\t Design3 & 226.77\\\\\n",
       "\t Design3 & 224.79\\\\\n",
       "\t Design3 & 229.75\\\\\n",
       "\t Design3 & 228.51\\\\\n",
       "\t Design3 & 221.44\\\\\n",
       "\t Design3 & 223.85\\\\\n",
       "\t Design3 & 223.97\\\\\n",
       "\t Design3 & 234.30\\\\\n",
       "\t Design3 & 219.50\\\\\n",
       "\t Design3 & 233.00\\\\\n",
       "\t Design4 & 230.55\\\\\n",
       "\t Design4 & 227.95\\\\\n",
       "\t Design4 & 231.84\\\\\n",
       "\t Design4 & 224.87\\\\\n",
       "\t Design4 & 229.49\\\\\n",
       "\t Design4 & 231.10\\\\\n",
       "\t Design4 & 221.53\\\\\n",
       "\t Design4 & 235.45\\\\\n",
       "\t Design4 & 228.35\\\\\n",
       "\t Design4 & 225.09\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 40 × 2\n",
       "\n",
       "| Design &lt;chr&gt; | Distance &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| Design1 | 206.32 |\n",
       "| Design1 | 207.94 |\n",
       "| Design1 | 206.19 |\n",
       "| Design1 | 204.45 |\n",
       "| Design1 | 209.65 |\n",
       "| Design1 | 203.81 |\n",
       "| Design1 | 206.75 |\n",
       "| Design1 | 205.68 |\n",
       "| Design1 | 204.49 |\n",
       "| Design1 | 210.86 |\n",
       "| Design2 | 217.08 |\n",
       "| Design2 | 221.43 |\n",
       "| Design2 | 218.04 |\n",
       "| Design2 | 224.13 |\n",
       "| Design2 | 211.82 |\n",
       "| Design2 | 213.90 |\n",
       "| Design2 | 221.28 |\n",
       "| Design2 | 229.43 |\n",
       "| Design2 | 213.54 |\n",
       "| Design2 | 214.51 |\n",
       "| Design3 | 226.77 |\n",
       "| Design3 | 224.79 |\n",
       "| Design3 | 229.75 |\n",
       "| Design3 | 228.51 |\n",
       "| Design3 | 221.44 |\n",
       "| Design3 | 223.85 |\n",
       "| Design3 | 223.97 |\n",
       "| Design3 | 234.30 |\n",
       "| Design3 | 219.50 |\n",
       "| Design3 | 233.00 |\n",
       "| Design4 | 230.55 |\n",
       "| Design4 | 227.95 |\n",
       "| Design4 | 231.84 |\n",
       "| Design4 | 224.87 |\n",
       "| Design4 | 229.49 |\n",
       "| Design4 | 231.10 |\n",
       "| Design4 | 221.53 |\n",
       "| Design4 | 235.45 |\n",
       "| Design4 | 228.35 |\n",
       "| Design4 | 225.09 |\n",
       "\n"
      ],
      "text/plain": [
       "   Design  Distance\n",
       "1  Design1 206.32  \n",
       "2  Design1 207.94  \n",
       "3  Design1 206.19  \n",
       "4  Design1 204.45  \n",
       "5  Design1 209.65  \n",
       "6  Design1 203.81  \n",
       "7  Design1 206.75  \n",
       "8  Design1 205.68  \n",
       "9  Design1 204.49  \n",
       "10 Design1 210.86  \n",
       "11 Design2 217.08  \n",
       "12 Design2 221.43  \n",
       "13 Design2 218.04  \n",
       "14 Design2 224.13  \n",
       "15 Design2 211.82  \n",
       "16 Design2 213.90  \n",
       "17 Design2 221.28  \n",
       "18 Design2 229.43  \n",
       "19 Design2 213.54  \n",
       "20 Design2 214.51  \n",
       "21 Design3 226.77  \n",
       "22 Design3 224.79  \n",
       "23 Design3 229.75  \n",
       "24 Design3 228.51  \n",
       "25 Design3 221.44  \n",
       "26 Design3 223.85  \n",
       "27 Design3 223.97  \n",
       "28 Design3 234.30  \n",
       "29 Design3 219.50  \n",
       "30 Design3 233.00  \n",
       "31 Design4 230.55  \n",
       "32 Design4 227.95  \n",
       "33 Design4 231.84  \n",
       "34 Design4 224.87  \n",
       "35 Design4 229.49  \n",
       "36 Design4 231.10  \n",
       "37 Design4 221.53  \n",
       "38 Design4 235.45  \n",
       "39 Design4 228.35  \n",
       "40 Design4 225.09  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "GolfBall<-read.table(\"../input/golfball-anovacsv/Golfball.csv\",header=T, sep=\",\")\n",
    "GolfBall"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "083de51c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-03-12T02:35:11.692555Z",
     "iopub.status.busy": "2022-03-12T02:35:11.652400Z",
     "iopub.status.idle": "2022-03-12T02:35:11.715969Z",
     "shell.execute_reply": "2022-03-12T02:35:11.714563Z"
    },
    "papermill": {
     "duration": 0.09438,
     "end_time": "2022-03-12T02:35:11.716142",
     "exception": false,
     "start_time": "2022-03-12T02:35:11.621762",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "lm(formula = Distance ~ Design, data = GolfBall)\n",
       "\n",
       "Coefficients:\n",
       "  (Intercept)  DesignDesign2  DesignDesign3  DesignDesign4  \n",
       "       206.61          11.90          19.97          22.01  \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "lm(Distance~Design,data=GolfBall)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "a70c27db",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-03-12T02:35:11.777964Z",
     "iopub.status.busy": "2022-03-12T02:35:11.776271Z",
     "iopub.status.idle": "2022-03-12T02:35:11.812551Z",
     "shell.execute_reply": "2022-03-12T02:35:11.811065Z"
    },
    "papermill": {
     "duration": 0.068549,
     "end_time": "2022-03-12T02:35:11.812718",
     "exception": false,
     "start_time": "2022-03-12T02:35:11.744169",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A anova: 2 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Df</th><th scope=col>Sum Sq</th><th scope=col>Mean Sq</th><th scope=col>F value</th><th scope=col>Pr(&gt;F)</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Design</th><td> 3</td><td>2990.9898</td><td>996.99660</td><td>53.02982</td><td>2.731991e-13</td></tr>\n",
       "\t<tr><th scope=row>Residuals</th><td>36</td><td> 676.8244</td><td> 18.80068</td><td>      NA</td><td>          NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A anova: 2 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Df & Sum Sq & Mean Sq & F value & Pr(>F)\\\\\n",
       "  & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tDesign &  3 & 2990.9898 & 996.99660 & 53.02982 & 2.731991e-13\\\\\n",
       "\tResiduals & 36 &  676.8244 &  18.80068 &       NA &           NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A anova: 2 × 5\n",
       "\n",
       "| <!--/--> | Df &lt;int&gt; | Sum Sq &lt;dbl&gt; | Mean Sq &lt;dbl&gt; | F value &lt;dbl&gt; | Pr(&gt;F) &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| Design |  3 | 2990.9898 | 996.99660 | 53.02982 | 2.731991e-13 |\n",
       "| Residuals | 36 |  676.8244 |  18.80068 |       NA |           NA |\n",
       "\n"
      ],
      "text/plain": [
       "          Df Sum Sq    Mean Sq   F value  Pr(>F)      \n",
       "Design     3 2990.9898 996.99660 53.02982 2.731991e-13\n",
       "Residuals 36  676.8244  18.80068       NA           NA"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Golf_anova<- anova(lm(Distance~Design,data=GolfBall))\n",
    "Golf_anova"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "546894bb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-03-12T02:35:11.886031Z",
     "iopub.status.busy": "2022-03-12T02:35:11.885333Z",
     "iopub.status.idle": "2022-03-12T02:35:11.906268Z",
     "shell.execute_reply": "2022-03-12T02:35:11.904480Z"
    },
    "papermill": {
     "duration": 0.063555,
     "end_time": "2022-03-12T02:35:11.906427",
     "exception": false,
     "start_time": "2022-03-12T02:35:11.842872",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Call:\n",
       "   aov(formula = Distance ~ Design, data = GolfBall)\n",
       "\n",
       "Terms:\n",
       "                   Design Residuals\n",
       "Sum of Squares  2990.9898  676.8244\n",
       "Deg. of Freedom         3        36\n",
       "\n",
       "Residual standard error: 4.335975\n",
       "Estimated effects may be unbalanced"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "model<- aov(Distance~Design,data=GolfBall)\n",
    "model"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "ac088ab7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-03-12T02:35:11.975020Z",
     "iopub.status.busy": "2022-03-12T02:35:11.972854Z",
     "iopub.status.idle": "2022-03-12T02:35:12.003689Z",
     "shell.execute_reply": "2022-03-12T02:35:12.002033Z"
    },
    "papermill": {
     "duration": 0.067315,
     "end_time": "2022-03-12T02:35:12.003870",
     "exception": false,
     "start_time": "2022-03-12T02:35:11.936555",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "  Tukey multiple comparisons of means\n",
       "    95% family-wise confidence level\n",
       "\n",
       "Fit: aov(formula = Distance ~ Design, data = GolfBall)\n",
       "\n",
       "$Design\n",
       "                  diff       lwr       upr     p adj\n",
       "Design2-Design1 11.902  6.679545 17.124455 0.0000027\n",
       "Design3-Design1 19.974 14.751545 25.196455 0.0000000\n",
       "Design4-Design1 22.008 16.785545 27.230455 0.0000000\n",
       "Design3-Design2  8.072  2.849545 13.294455 0.0010308\n",
       "Design4-Design2 10.106  4.883545 15.328455 0.0000451\n",
       "Design4-Design3  2.034 -3.188455  7.256455 0.7221072\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Signi_diff<- TukeyHSD(model)\n",
    "Signi_diff"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "d1a6957f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-03-12T02:35:12.077493Z",
     "iopub.status.busy": "2022-03-12T02:35:12.075157Z",
     "iopub.status.idle": "2022-03-12T02:35:12.352487Z",
     "shell.execute_reply": "2022-03-12T02:35:12.351725Z"
    },
    "papermill": {
     "duration": 0.314915,
     "end_time": "2022-03-12T02:35:12.352641",
     "exception": false,
     "start_time": "2022-03-12T02:35:12.037726",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "boxplot(Distance~Design,data=GolfBall, main=\"Boxplot of GolfBall Designs\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "fb6771f3",
   "metadata": {
    "papermill": {
     "duration": 0.034337,
     "end_time": "2022-03-12T02:35:12.422966",
     "exception": false,
     "start_time": "2022-03-12T02:35:12.388629",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 4.688231,
   "end_time": "2022-03-12T02:35:12.569907",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-03-12T02:35:07.881676",
   "version": "2.3.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
