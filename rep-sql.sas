/* Q1 */ select * from employee order by empname;

/* Q2 */ select prodname,prodcost from product;

/* Q3 */ select prodname,prodcost,100*(prodlist-prodcost)/prodcost 
                         as profit from product ;

/* Q4 */ select distinct empcity from employee order by empcity;

/* Q5 */ select custname,sum(invqty*invprice) as total from invoice
                         group by custname;

/* Q6 */ select empcity,count(*) as nb from employee group by empcity;

/* Q7 */ select custname from customer group by custname having count(*)>2;

/* Q8 */ select invnum,product.prodname,prodcost,prodlist,invprice
              from product,invoice
              where product.prodname=invoice.prodname & custname='Beach Land';

/* Q9 */ select i.custname,i.custnum,invnum,prodname 
              from customer as c, invoice as i
              where c.custname=i.custname & c.custnum=i.custnum
              & custcity='Ocean City';

/* Q10 */ select e.empnum,e.empname,e.emptitle,m.empnum,m.empname,m.emptitle
              from employee as e, employee as m where e.empboss=m.empnum;
 /* ou */ select e.empnum,e.empname,e.emptitle,m.empnum,m.empname,m.emptitle
          from employee as e left join employee as m
          on e.empboss=m.empnum;

/* Q11 */ select c.custname,c.custnum,i.prodname,i.invnum
              from employee as e,customer as c, invoice as i
              where empname='Sam' & e.empnum=i.empnum &
              c.custname=i.custname & c.custnum=i.custnum &
	      custcity='Charleston';

/* Q12 */ select e.empnum,empname,custname,custnum,invnum
              from employee as e, invoice as i 
              where e.empnum=i.empnum & empname in ('Fred','Marvin');

/* Q13 */ select prodname from product 
              where prodname not in (select prodname from invoice);
 /* ou */ select prodname from product except select prodname from invoice;

/* Q14 */ select empname from employee as e where 'surfboard' in 
           (select prodname from invoice as i where e.empnum=i.empnum);
 /* ou */ select distinct empname from employee e, invoice i
           where e.empnum=i.empnum & prodname='surfboard';

/* Q15 */ select m.empname as manager, count(invnum) as nv, 
            sum(invqty*invprice) as totv,
	    sum(invqty*(invprice-prodcost)) as marge
            from employee as e, employee as m, product as p,invoice as i
            where i.empnum=e.empnum & m.emptitle='manager' &
            e.empboss=m.empnum & i.prodname=p.prodname
            group by manager;

/* Q16 */ select empname, nraft from 
            (select empname, sum(invqty) as nraft
            from employee as e,invoice as i
	    where e.empnum=i.empnum & prodname='raft'
            group by empname)
            where nraft>=20; 
 /* ou */ select empname, sum(invqty) as nraft
            from employee as e,invoice as i
	    where e.empnum=i.empnum & prodname='raft'
            group by empname
            having nraft>=20; 
