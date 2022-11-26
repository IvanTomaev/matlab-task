function result = solution(m, r, x,y,z,v,a,xk,yk,zk,rk, g)
    horDistance = getDistance(x,xk,y,yk);
    
    vertDistance = zk - z;
    vHor = v*cos(a);
    vVert = v*sin(a);
    
    maxH = (vVert^2)/(2*g)+z;
    t = 2*vVert/g;
    travelDistance = t*vHor;
    
    validInput = validate(horDistance,vertDistance, maxH, travelDistance);
    
    if ~validInput
        result = 0;
        return 
    end
    
    timeToRing = sqrt(2*(maxH-zk)/g);
    horCoord = timeToring*vHor+travelDistance/2;
    
    plusDist = travelDistance+(rk-r);
    minusDist = travelDistance-(rk-r);
    
    if horCoord == travelDistance || (horCoord>travelDistance && horCoord<=plusDist) || (horCoord<travelDistance && horCoord>=minusDist)
        result = 1
    else
        result = 0
    end
end

