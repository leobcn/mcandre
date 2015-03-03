% Andrew Pennebaker
% 22 Mar 2009

% From Mike Sussman's newton.m
% http://www.math.pitt.edu/~sussmanm/2070Fall06/lab_05/index.html#Modifications
function x=newton(f, fp, x)
  EPSILON=1.0e-6;
  MAX_ITERATION=500;

  for iteration=1:MAX_ITERATION
    y=f(x);
    yp=fp(x);

    d=y/yp;
    x=x-d;

    if abs(d)<EPSILON
      break;
    end
  end
end
