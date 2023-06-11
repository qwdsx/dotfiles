#!/bin/sh

. "${HOME}/.Xresources-colors"

weather=$(curl -s 'http://api.weatherapi.com/v1/current.json?key=b4d14cbd6e424b48a8242524221505&q=Oulu&aqi=no%27')

if [ $(echo "$weather" | grep -E "(Unknown|curl|HTML)" | wc -l) -gt 0 ]; then
    echo "weather unavailable"
else
    temp=$(echo "$weather" | jq -r '.current.temp_c')
    condition=$(echo "$weather" | jq -r '(.current.condition.text)' | awk '{print tolower($0)}')
    country=$(echo "$weather" | jq -r '(.location.country)' | awk '{print tolower($0)}')
    echo "%{F$COLOR15}$condition $temp°C%{F-}"
    
    # if [[ "$condition" == "clear" || "$condition" == "sunny" ]]; then
    #     echo "%{F$COLOR7}$condition, $temp°C%{F-}"
    # elif [[ "$condition" == "cloudy" || "$condition" == "partly cloudy" || "$condition" == "overcast" ]]; then
    #     echo "%{F$COLOR7}$condition, $temp°C%{F-}"
    # elif [[ "($condition" == "light rain" || "$condition" == "moderate rainy"  || "moderate rain at times" ]]; then
    #     echo "%{F$COLOR7}$condition, $temp°C%{F-}"
    # else
    #     echo "%{F$COLOR7}$condition, $temp°C%{F-}"
    # fi
fi
