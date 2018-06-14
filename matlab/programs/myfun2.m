function a=myfun2(x,y)
   function b=A(x,y)
       b=x+y;
   end
    function d=B(x,y)
        d=x-y;
    end
a=A(x,y)+B(x,y);
end