classdef Country
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Name
        States State
        StateNameList
        CumulativeCases 
        CumulativeDeaths
        DailyCases
        DailyDeaths
    end
    
    methods
        function obj = Country( name, state, data )
            obj.Name = name;
            obj.StateNameList = state;
            if isempty(state)
                obj.States = '';
                obj.StateNameList = '';
            else
                obj.StateNameList = state(2:end);
                for i = 1:length(obj.StateNameList)
                    obj.States(i) = State(state{i+1},data(i+1,:));
                end
            end
            dataMat = cell2mat(data);
            obj.CumulativeCases = dataMat(1,1:2:end);
            obj.DailyCases = max(diff(dataMat(1,1:2:end),1,2),0);
            obj.CumulativeDeaths = dataMat(1,2:2:end);
            obj.DailyDeaths = max(diff(dataMat(1,2:2:end),1,2),0);
            
        end
    end
    
end

