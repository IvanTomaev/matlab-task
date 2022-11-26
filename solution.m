function result = solution(m, r, x,y,z,v,a,xk,yk,zk,rk, g)
    horDistance = getDistance(x,xk,y,yk);
    
    vertDistance = zk - z;
    if vertDistance<0
        result = false;
        return 
    end
    
    vHor = v*cos(a);
    vVert = v*sin(a);
    
    maxH = (vVert^2)/(2*g);
    
    if maxH + z < zk
        result = false;
        return 
    end
    t = 2*vVert/g;
    travelDistance = t*vHor;
    
    if (horDistance<=travelDistance/2) || (horDistance > travelDistance)
        result = false;
        return 
    end
        
    
end

