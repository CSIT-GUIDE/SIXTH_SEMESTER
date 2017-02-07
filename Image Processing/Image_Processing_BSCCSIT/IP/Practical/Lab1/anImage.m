for i = 1:1:255
  for j = 1:1:255
    a(i,j) = j;
  end
end
imwrite(a,'first.bmp')
imwrite(a,gray(256),'second.bmp');