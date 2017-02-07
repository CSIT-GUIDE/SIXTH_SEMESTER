for i = 1:1:255
  for j = 1:1:255
    x(i,j) = i;
  end
end

colormap(a,gray(256));
imshow(a);