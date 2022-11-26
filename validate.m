function  result = validate(horDistance,vertDistance, maxH, travelDistance)
    if vertDistance
        result = 0;
        return 
    end
    
    if vertDistance> maxH
        result = 0;
        return 
    end
    
    if horDistance>travelDistance || horDistance <= travelDistance/2
        result = 0;
        return 
    end
end

