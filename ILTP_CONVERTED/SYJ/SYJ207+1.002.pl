?- test((((p1<=>p2)=>(p1&(p2&(p3&p4)))))
   & (((p2<=>p3)=>(p1&(p2&(p3&p4)))))
   & (((p3<=>p4)=>(p1&(p2&(p3&p4)))))
   & (((p4<=>p1)=>(p1&(p2&(p3&p4)))))
   => ((p0/((p1&(p2&(p3&p4)))/((p0)=>'#'))))).
?- halt.
