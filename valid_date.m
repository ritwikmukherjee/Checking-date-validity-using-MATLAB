function valid = valid_date(year,month,day)
if nargin~=3 || nargout~=1
    valid = false;
    return;     
else
    if(~isscalar(year)||~isscalar(month)||~isscalar(day)||(year<1)||(month<1)||(month>12)||(day<1)||(day>31)||(year~=fix(year))||(month~=fix(month))||(day~=fix(day)))
   valid = false;
   return;
    else 
        y1=year/4;
        y2=year/100;
        y3=year/400;
        p=(y3==ceil(y3));
        q=(y1==ceil(y1));
        r=(y2~=ceil(y2));
        s=(p||(q&&r));
        if(s)
            if month==2
                if day<=29
                    valid=true;
                    return;
                else
                    valid=false;
                    return;
                end
            elseif (month==1||month==3||month==5||month==7||month==8||month==10||month==12)
                if day<=31
                    valid=true;
                    return;
                else
                    valid=false;
                    return;
                end
            elseif (month==4||month==6||month==9||month==11)
                if day<=30
                    valid=true;
                    return;
                else
                    valid=false;
                    return;
                end
            else
                valid=false;
                return;
            end
        else
            if month==2
                if day<=28
                    valid=true;
                    return;
                else
                    valid=false;
                    return;
                end
            elseif (month==1||month==3||month==5||month==7||month==8||month==10||month==12)
                if day<=31
                    valid=true;
                    return;
                else
                    valid=false;
                    return;
                end
            elseif (month==4||month==6||month==9||month==11)
                if day<=30
                    valid=true;
                    return;
                else
                    valid=false;
                    return;
                end
            else
                valid=false;
                return;
            end
        end
    end
end