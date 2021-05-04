img=imread('rind.jpg');
img=imresize(img,[500 500]);
FDetect = vision.CascadeObjectDetector();
BBox=step(FDetect,img);
B=insertObjectAnnotation(img,'rectangle',BBox, 'face');
imshow(B),title('Face Detectrd');
n=size(BBox,1);
str_n=num2str(n);
str=strcat('Number of detected Faces are ',str_n);