classdef State
    %UNTITLED5 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Name
        CumulativeCases
        CumulativeDeaths
        DailyCases
        DailyDeaths
    end
    
    methods
        function obj = State( name, data )
            obj.Name = name;
            dataMat = cell2mat(data);
            obj.CumulativeCases = dataMat(1:2:end);
            obj.DailyCases = max(diff(dataMat(1:2:end),1,2),0);
            obj.CumulativeDeaths = dataMat(2:2:end);
            obj.DailyDeaths = max(diff(dataMat(2:2:end),1,2),0);
        end
        
    end
    
end

