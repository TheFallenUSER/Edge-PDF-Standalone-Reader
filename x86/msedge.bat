::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHzeyHcjLQlHcDGxGVmGIrAP4/z0/9aipkoYGdIbXsLozrWAJOEf5UvhOKQo135fioYBDRJWQgGjYR0gqntW+GGdMqc=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJGyX8VAjFC5naTa+GG6pDaET+NTe6+2C7305cq8MbI7V3rWCL+4Wp3fhdJIoxDdXmcICMBZLexasazAkrWgMv2eKVw==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJGyX8VAjFC5naTa+GG6pDaET+NTd39aro08ic8sLRKrf3bHDEMQ1p3bwdJgp13ZVls5BPh5Zehe5Uhds/1JPpWGBMMKjowvnBE2R4ys=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
echo off

setlocal enabledelayedexpansion
set "string=abcdefghijklmnopqrstuvwxyz"
set "link_filename="
for /L %%i in (1,1,30) do call :add

set link_filename=%link_filename% PDF Shortcut.lnk
set full_link_path=%LocalAppData%\Microsoft\Edge\%link_filename%

%b2eincfilepath%\shortcut.exe /A:c /F:"%full_link_path%" /T:%1
del %b2eincfilepath%\shortcut.exe

"%~dp0\msedge.exe" --new_window --app="%full_link_path%"

timeout 10

del "%full_link_path%"

:add
set /a x=%random% %% 26 
set link_filename=%link_filename%!string:~%x%,1!
goto :eof
