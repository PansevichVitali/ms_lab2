#!/bin/bash
while (true) do
    curl -s http://www.gismeteo.by/weather-minsk-4248/ > pogoda
    grep -m 1 'value m_temp c' pogoda > temp
    echo  $(sed 's/[^\-\+0-9]//g' temp)
    rm temp;
    rm pogoda;
    sleep 5
done
