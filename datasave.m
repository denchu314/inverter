%
% data save
%


filename = strcat(datestr(now, 'yyyymmdd_HHMMSS'), '_result');

dat = [out.I_d.time out.I_d.data out.I_d_req.data out.I_q.data out.I_q_req.data out.TQ.data out.dth.data out.dth_base.data out.th.data];
xlswrite(filename, dat);