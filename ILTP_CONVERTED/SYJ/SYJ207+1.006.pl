?- test((((p1<=>p2)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p2<=>p3)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p3<=>p4)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p4<=>p5)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p5<=>p6)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p6<=>p7)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p7<=>p8)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p8<=>p9)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p9<=>p10)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p10<=>p11)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p11<=>p12)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   & (((p12<=>p1)=>(p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))))
   => ((p0/((p1&(p2&(p3&(p4&(p5&(p6&(p7&(p8&(p9&(p10&(p11&p12)))))))))))/((p0)=>'#'))))).
?- halt.
