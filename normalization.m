 pbar = mean(p,2);% p: 3xn
 pdiff = p(1:2,:) - repmat(pbar(1:2), 1, n);
 mdist = mean(sqrt(diag(pdiff'*pdiff)));
 scale = sqrt(2)/mdist;
 pnormalized(1:2,:) = scale.*pdiff;
 pnormalized(3,:) = 1;
 T = [scale, 0, -pbar(1)*scale; ...
   0, scale, -pbar(2)*scale; ...
   0,0,1];
