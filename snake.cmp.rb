# eval((%w~require"io/console";require"timeout";puts"Please\smake\sthe\ssnake\seat\sas\smany\sfruits\sas\spossible\sto\sgrow\sit\sgreater.";puts"Please\smake\sthe\ssnake\seat\sas\smany\sfruits\sas\spossible\sto\sgrow\sit\sgreater.";puts"Caution:\nSnake\scan\'t\sgo\sBackword.\nOtherwise,\sit\'ll\skill\sitself.";puts"Please\sinput\sbox_size\syou\sprefer:(default:10)";i=(gets.chomp!.to_i);puts"And\srefresh\srate?:(default:0.5s)";rr=(gets.chomp!.to_f);i=10__if__i==0;rr=0.5__if__rr==0.0||rr<=0;frt=->i,l{l[0...i]+"*"+l[(i+1)..]};rep=->is,l{l.chars.map.with_index{|v,i|if(is.include?(i))then"□"else"w"end}*""};calc_pos=->i{c={A:(-i*2)+(i*i*2),B:(i*2),C:1,D:(-1)};->k,cp{nxt=cp+c[k];return__nxt+(i*2)if(k==:D&&cp.modulo(i*2)==0);return__nxt-(i*2)if(k==:C&&(cp+1).modulo(i*2)==0);nxt.modulo(i*i*2);};};ex,d,hp,body,len=false,"C",0,[0],1;r=rand(1..i*i);cp=calc_pos.(i);loop()do;break__if__ex||body.length!=body.uniq.length;hp=cp.(d.to_sym,hp);body.unshift(hp);if(r==hp&&len+=1)then__r=rand(1..i*i)else__body.pop__end;line=("ww"*i)*i;line=rep.(body,line);line=frt.(r,line);line=line.chars.each_slice(i*2).to_a.map{|v|v.*""}*"\n";line=line.gsub("*","\e[31m*\e[0m").gsub("□","\e[32m□\e[0m");puts"\e[H\e[2J";puts"Length:#{len}";puts(line);begin;Timeout.timeout(rr){while(k=STDIN.getch);if(k=="\C-c")then__ex=true;break;end;if(k=="\e"&&STDIN.getch=="[")then__d=STDIN.getch.intern;break;end;end;};rescue__Timeout::Error;next;end;end;~*"").gsub('__',' '))
    eval((%w~       req        uire    "io/                 cons        ole"     ;require"timeout
  ";puts"Pleas     e\sma       ke\s    the\s                 sna       ke\s      eat\sas\smany\sf
ruit       s\sa    s\spos      sibl    e\sto\s               gro      w\si       t\sg
reat       er."    ;puts"C     auti    on:\nSna             ke\s     can         't\s
 go                \sBackwo    rd.     \nOtherwi            se,\s    it\'        ll\s
  kill\sit         self .";p   uts"    Plea se\s            input\sbox_          size\syou\sprefe
     r:(defau      lt:1   0)"; i=(g    ets.   chomp         !.to_i);put          s"And\srefresh\s
           rate    ?:(d    efault:0    .5s)";rr=(get        s.ch   omp!.         to_f
);i=       10__    if__     i==0;rr    =0.5__if__rr==       0.0|     |rr<=       0;fr
t=->       i,l{    l[0.      ..i]+"    *"+l      [(i+1      )..]       };re      p=->
  is,l{l.char      s.ma       p.wit    h_in       dex{|     v,i|        if(i     s.include?(i))th
    en"□"els       e"w"        end}    *""}        ;calc    _pos         =->i    {c={A:(-i*2)+(i*

    i*2),B:(       i*2)        ,C:1    ,D:(                 -1)}        ;->k     ,cp{nxt=cp+c[k];        return__nxt+(i      *2)if(k==:D&&c
  p.modulo(i*      2)==0       );re    turn_                _nxt       -(i*      2)if(k==:C&&(cp+        1).modulo(i*2)=     =0);nxt.modulo(
i*i*       2);}    ;};ex,      d,hp    ,body,               len=      fals       e,"C                    ",0,        [0],    1;r=        rand
(1..       i*i)    ;cp=cal     c_po    s.(i);l              oop(     )do;        brea                    k__i        f__e    x||b        ody.
leng               th!=body    .uni    q.length             ;hp=    cp.(         d.to                    _sym      ,hp)      ;bod      y.un
  shift(hp         );if (r==   hp&&    len+ =1)t            hen__r=rand          (1..i*i)else__bo        dy.pop__end         ;line=("ww"
     *i)*i;li      ne=r   ep.( body    ,lin   e);li         ne=frt.(r,l          ine);line=line.c        hars.each_slic      e(i*2).to_a.ma
           p{|v    |v.*    ""}*"\n"    ;line=line.gs        ub("   *","\e         [31                    m*\e        [0m"    ).gs        ub("
□","       \e[3    2m□      \e[0m")    ;puts"\e[H\e[2       J";pu     ts"Le      ngth                    :#{l        en}"    ;put        s(li
ne);       begi    n;Ti      meout.    time      out(r      r){w       hile      (k=S                    TDIN        .get    ch);        if(k
  =="\C-c")th      en__       ex=tr    ue;b       reak;     end;        if(k     =="\e"&&STDIN.ge  tch=  ="["        )the    n__d=STDIN.getc
  h.intern;b       reak       ;end;    end;       };resc    ue__        Timeo    ut::Error;next;e  nd;e  nd;~        *"")    .gsub('__',' '))