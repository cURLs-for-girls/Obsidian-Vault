---
tags: [onenote, aivengers]
---

# Multi-Modell & Multi-Cloud im RAG

Problem: PDF per RAG nur Textinhalte vektorisiert - keine Bilder usw.

Von Nvidia auf CES vorgestellt

Marc Degler bezgl. CC Assitant fragen wie weit RAG

Keine alternative Textbeschreibung für dieses Bild vorhanden...Agents are Multi-Model, Multi-Cloud, and Hybrid-Cloud 
Prompt 
G 
Response 
User or Machine 
AI 
Reason 
Frontier Models 
Critique 
Plan 
Router 
Customized 
Open Models 
Searchi 
Generate 
Act 
Tool Use 
App, Data 
Web Search 
Semantic 
Filesystem 
Memory 
Sandbox 
Platforms 
Search 
(MCP)

IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. XX, NO. , AUGUST 2020 
Page header [1] 
Page_header 
Picture [3] 
Text (8 
Www 150|as input. 
Next [9]" 
Quantitative analysis for optimization Table 4 shows 
the quantitative performance, which reveals the importance 
of each energy term. We compare results under 5 different 
energy term settings: a) 2D position only; b) 2D position 
+ mask; c) 2D position + mask + 3D part orientation; d) 
2D position + mask + 3D part orientation + IUV; e) 2D 
(a) 
(b) 
(c) 
position + mask + 3D part orientation + IUV + temporal. We 
report MPJPE on Human3.6M and 3DPW. The results shows 
Fig. 13: Comparison of our results with VNect. (a) the input 
that every energy term in our optimization is beneficial for 
image; (b) the final results of VNect (left) and our method 
human pose reconstruction. The result with temporal term 
(right); (c) the raw network predictions of VNect (left) and 
shows higher errors, because it ensures temporal smooth 
our method (right). 
rathor than the consistency with the network output cues 
The mask term in optimization. We evaluate the impor- 
Picture |5 
tance of the foreground segmentation mask by comparing 
the reconstructed bodies with and without this term. Fig. 15 
clearly shows the role of the mask when predicted 2D joints 
and 3D orientation are inaccurate, especially when some 
joints are missing. 
Picture [11] 
(a) 
(c) 
(e) 
(P) 
Fig. 15: Importance of the mask term. Given an image (a), 
the network predicts a foreground segmentation mask (b) 
and 2D joints (c) (note the left-wrist is missing). If the mask 
is not used, the reconstructed body is problematic (d); The 
mask helps build a correct pose (e). 
Text [13] 
The 3D part Orientation term in optimization. Fig. 16 
shows an example with and without the 3D orientation 
Fig. 14: Comparison of our method (middle) with SMPLify 
term. The use of the 3D orientation term significantly re- 
(right). 
duces the reconstruction ambiguity of 3D poses. 
Picture [14] 
Text [7]] 
Quantitative analysis for multi-task network To eval- 
uate the importance of our multi-task design, we modify 
the network in Fig. 3 into 4 structures with different config- 
urations: a) 2D joint detection only, b) 2D joint detection 
+ IUV branch, c) 2D joint detection + POFs, d) 2D joint 
detection + IUV + POFs. All these networks are trained 
with the same training dataset, and tested on our validation 
dataset, which contains 11 different subjects not in the 
training dataset. For metrics of 2D joint positions, we report 
PCKh@0.5 [7] (the higher the better). For 3D part orientation 
we scale the predicted 3D part orientation by the ground- 
truth limb length to obtain the 3D joint positions, then align 
Fig. 16: Importance of the 3D part orientation term. (left) 
the root joint position and compute the MPJPE (the lower 
input image; (middle) result with 3D part orientation term; 
the better). The results are reported in Table 3, which shows 
(right) result without 3D part orientation term. 
the power of mutual promotion of multi-task. We found 
Text [16]] 
that IUV information improves the accuracy of 3D POF 
The IUV term in optimization. An IUV map plays 
orientation. The reason is that IUV maps provide the part 
important roles in both 3D body geometry reconstruction 
occlusion relationship which conveys some 3D information 
and pose estimation. We evaluate the importance of IUV by 
IUV maps are usually more abstract and more powerful 
dropping off this term in shape reconstruction and pose esti- 
than 2D landmarks in representing a human, and it is used 
mation, respectively. Fig. 17(a) shows a side-by-side compar- 
ison while reconstructing an over-weighted lady. Using IUV ...IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. XX, NO. , AUGUST 2020 
Page header [1] 
Page_header 
Picture [3] 
Text (8 
Www 150|as input. 
Next [9]" 
Quantitative analysis for optimization Table 4 shows 
the quantitative performance, which reveals the importance 
of each energy term. We compare results under 5 different 
energy term settings: a) 2D position only; b) 2D position 
+ mask; c) 2D position + mask + 3D part orientation; d) 
2D position + mask + 3D part orientation + IUV; e) 2D 
(a) 
(b) 
(c) 
position + mask + 3D part orientation + IUV + temporal. We 
report MPJPE on Human3.6M and 3DPW. The results shows 
Fig. 13: Comparison of our results with VNect. (a) the input 
that every energy term in our optimization is beneficial for 
image; (b) the final results of VNect (left) and our method 
human pose reconstruction. The result with temporal term 
(right); (c) the raw network predictions of VNect (left) and 
shows higher errors, because it ensures temporal smooth 
our method (right). 
rathor than the consistency with the network output cues 
The mask term in optimization. We evaluate the impor- 
Picture |5 
tance of the foreground segmentation mask by comparing 
the reconstructed bodies with and without this term. Fig. 15 
clearly shows the role of the mask when predicted 2D joints 
and 3D orientation are inaccurate, especially when some 
joints are missing. 
Picture [11] 
(a) 
(c) 
(e) 
(P) 
Fig. 15: Importance of the mask term. Given an image (a), 
the network predicts a foreground segmentation mask (b) 
and 2D joints (c) (note the left-wrist is missing). If the mask 
is not used, the reconstructed body is problematic (d); The 
mask helps build a correct pose (e). 
Text [13] 
The 3D part Orientation term in optimization. Fig. 16 
shows an example with and without the 3D orientation 
Fig. 14: Comparison of our method (middle) with SMPLify 
term. The use of the 3D orientation term significantly re- 
(right). 
duces the reconstruction ambiguity of 3D poses. 
Picture [14] 
Text [7]] 
Quantitative analysis for multi-task network To eval- 
uate the importance of our multi-task design, we modify 
the network in Fig. 3 into 4 structures with different config- 
urations: a) 2D joint detection only, b) 2D joint detection 
+ IUV branch, c) 2D joint detection + POFs, d) 2D joint 
detection + IUV + POFs. All these networks are trained 
with the same training dataset, and tested on our validation 
dataset, which contains 11 different subjects not in the 
training dataset. For metrics of 2D joint positions, we report 
PCKh@0.5 [7] (the higher the better). For 3D part orientation 
we scale the predicted 3D part orientation by the ground- 
truth limb length to obtain the 3D joint positions, then align 
Fig. 16: Importance of the 3D part orientation term. (left) 
the root joint position and compute the MPJPE (the lower 
input image; (middle) result with 3D part orientation term; 
the better). The results are reported in Table 3, which shows 
(right) result without 3D part orientation term. 
the power of mutual promotion of multi-task. We found 
Text [16]] 
that IUV information improves the accuracy of 3D POF 
The IUV term in optimization. An IUV map plays 
orientation. The reason is that IUV maps provide the part 
important roles in both 3D body geometry reconstruction 
occlusion relationship which conveys some 3D information 
and pose estimation. We evaluate the importance of IUV by 
IUV maps are usually more abstract and more powerful 
dropping off this term in shape reconstruction and pose esti- 
than 2D landmarks in representing a human, and it is used 
mation, respectively. Fig. 17(a) shows a side-by-side compar- 
ison while reconstructing an over-weighted lady. Using IUV
