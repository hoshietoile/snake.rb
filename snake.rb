require"io/console";require"timeout";
puts"Please\smake\sthe\ssnake\seat\sas\smany\sfruits\sas\spossible\sto\sgrow\sit\sgreater.";
puts"Caution:\nSnake\scan\'t\sgo\sBackword.\nOtherwise,\sit\'ll\skill\sitself.";
puts"Please\sinput\sbox_size\syou\sprefer:(default:10)";
i=(gets.chomp!.to_i);
puts"And\srefresh\srate?:(default:0.5s)";
rr=(gets.chomp!.to_f);
i=10 if i==0;
rr=0.5 if rr==0.0||rr<=0;
frt=->i,l{l[0...i]+"*"+l[(i+1)..]};
rep=->is,l{l.chars.map.with_index{|v,i|if(is.include?(i))then"□"else"w"end}*""};
calc_pos=->i{
  c={A:(-i*2)+(i*i*2),B:(i*2),C:1,D:(-1)};
  ->k,cp{
    nxt=cp+c[k];
    return nxt+(i*2)if(k==:D&&cp.modulo(i*2)==0);
    return nxt-(i*2)if(k==:C&&(cp+1).modulo(i*2)==0);
    nxt.modulo(i*i*2);
  };
};
ex,d,hp,body,len=false,"C",0,[0],1;
r=rand(1..i*i);
cp=calc_pos.(i);
loop()do;
  break if ex||body.length!=body.uniq.length;
  hp=cp.(d.to_sym,hp);
  body.unshift(hp);
  if(r==hp&&len+=1)then r=rand(1..i*i)else body.pop end;
  line=("ww"*i)*i;
  line=rep.(body,line);
  line=frt.(r,line);
  line=line.chars.each_slice(i*2).to_a.map{|v|v.*""}*"\n"
  line=line.gsub("*","\e[31m*\e[0m").gsub("□","\e[32m□\e[0m");
  puts"\e[H\e[2J";
  puts"Length:#{len}";
  puts(line);
  begin;
    Timeout.timeout(rr){
      while(k=STDIN.getch);
        if(k=="\C-c") then
          ex=true;
          break;
        end;
        if(k=="\e"&&STDIN.getch=="[") then
          d=STDIN.getch.intern;
          break;
        end;
      end;
    };
  rescue Timeout::Error;
    next;
  end;
end;

# v1 # eval((%w~require"io/console";require"timeout";puts"Caution:\nSnake\scan\sgo\sjust\s`Forward`.\nTherefore,\sif\sleed\sit\sbackward,\sit\'ll\skill\sitself.";puts"Please\sinput\syour\sfavorite\sboxSize:(default:10)";i=(gets.chomp!.to_i);puts"And\srefresh\srate?:(default:0.5s)";rr=(gets.chomp!.to_f);i=10__if__i==0;rr=0.5__if__rr==0.0||rr<=0;feed=->i,l{l[0...i]+"*"+l[(i+1)..]};rep=->is,l{l.chars.map.with_index{|v,i|if(is.include?(i))then"□"else"w"end}*""};calc_pos=->i{c={A:(-i*2)+(i*i*2),B:(i*2),C:1,D:(-1)};->k,cp{(cp+c[k]).modulo(i*i*2)}};ex,d,hp,body,snake_len=false,"C",0,[0],1;r=rand(1..i*i);calc=calc_pos.(i);loop()do;break__if__ex||body.length!=body.uniq.length;hp=calc.(d.to_sym,hp);body.unshift(hp);if(r==hp&&snake_len+=1)then__r=rand(1..i*i)else__body.pop__end;line=("ww"*i)*i;line=rep.(body,line);line=feed.(r,line);line=line.chars.each_slice(i*2).to_a.map{|v|v.*""}*"\n";line=line.gsub"*","\e[31m*\e[0m";line=line.gsub"□","\e[32m□\e[0m";puts"\e[H\e[2J";puts"Length:#{snake_len}";puts(line);begin;Timeout.timeout(rr){while(k=STDIN.getch);if(k=="\C-c")__then__ex=true;break;end;if(k=="\e"&&STDIN.getch=="[")__then__d=STDIN.getch.intern;break;end;end};rescue__Timeout::Error;next;end;end~*"").gsub('__','__'))
# v2
# eval((%w~require"io/console";require"timeout";puts"Please\smake\sthe\ssnake\seat\sas\smany\sfruits\sas\spossible\sto\sgrow\sit\sgreater.";puts"Please\smake\sthe\ssnake\seat\sas\smany\sfruits\sas\spossible\sto\sgrow\sit\sgreater.";puts"Caution:\nSnake\scan\'t\sgo\sBackword.\nOtherwise,\sit\'ll\skill\sitself.";puts"Please\sinput\sbox_size\syou\sprefer:(default:10)";i=(gets.chomp!.to_i);puts"And\srefresh\srate?:(default:0.5s)";rr=(gets.chomp!.to_f);i=10__if__i==0;rr=0.5__if__rr==0.0||rr<=0;frt=->i,l{l[0...i]+"*"+l[(i+1)..]};rep=->is,l{l.chars.map.with_index{|v,i|if(is.include?(i))then"□"else"w"end}*""};calc_pos=->i{c={A:(-i*2)+(i*i*2),B:(i*2),C:1,D:(-1)};->k,cp{nxt=cp+c[k];return__nxt+(i*2)if(k==:D&&cp.modulo(i*2)==0);return__nxt-(i*2)if(k==:C&&(cp+1).modulo(i*2)==0);nxt.modulo(i*i*2);};};ex,d,hp,body,len=false,"C",0,[0],1;r=rand(1..i*i);cp=calc_pos.(i);loop()do;break__if__ex||body.length!=body.uniq.length;hp=cp.(d.to_sym,hp);body.unshift(hp);if(r==hp&&len+=1)then__r=rand(1..i*i)else__body.pop__end;line=("ww"*i)*i;line=rep.(body,line);line=frt.(r,line);line=line.chars.each_slice(i*2).to_a.map{|v|v.*""}*"\n";line=line.gsub("*","\e[31m*\e[0m").gsub("□","\e[32m□\e[0m");puts"\e[H\e[2J";puts"Length:#{len}";puts(line);begin;Timeout.timeout(rr){while(k=STDIN.getch);if(k=="\C-c")then__ex=true;break;end;if(k=="\e"&&STDIN.getch=="[")then__d=STDIN.getch.intern;break;end;end;};rescue__Timeout::Error;next;end;end;~*"").gsub('__',' '))