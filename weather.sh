#!/bin/bash
time=11;
while (true) do
    curl -s http://www.gismeteo.by/weather-minsk-4248/ > pogoda
    grep -m 1 "<dd class='value m_temp c'>" pogoda > temp
    echo  $(sed 's/[^\-\+0-9]//g' temp)
    rm temp;
    rm pogoda;
    sleep $time
done
