 /****************************************************************/
 /*          S A S   S A M P L E   L I B R A R Y                 */
 /*                                                              */
 /*    NAME: SQLUGDAT                                            */
 /*   TITLE: DATASETS USED IN SQL USAGE GUIDE, VERSION 6.06      */
 /* PRODUCT: BASE                                                */
 /*  SYSTEM: ALL                                                 */
 /*    KEYS: SQL DATMAN SQLV61 MACRO                             */
 /*   PROCS: SQL                                                 */
 /*    DATA:                                                     */
 /*                                                              */
 /* SUPPORT: KMS, PMK                    UPDATE:                 */
 /*     REF:                                                     */
 /*    MISC:                                                     */
 /*                                                              */
 /****************************************************************/
  title1 '*** sqlugdat: SQL User Guide datasets ***';


 /*-----------------------------------------------------------------*/
 /*-- The following data steps create the permanent datasets used --*/
 /*-- in the SQL User's Guide examples.                           --*/
 /*-----------------------------------------------------------------*/

data invoice;
   input invnum custname $ 6-15 custnum empnum prodname $ 28-37
      invqty invprice;
   format invprice dollar.;
   cards;
280  Beach Land   16  215  snorkel      20    14
290  Beach Land   16  216  flippers     15    19
300  Beach Land   16  216  raft         20     7
310  Coast Shop    3  318  windsurfer    2  1305
320  Coast Shop    3  318  raft         30     6
330  Coast Shop    5  318  snorkel       5    15
340  Coast Shop    5  318  flippers     15    19
350  Coast Shop    5  318  raft         40     6
360  Coast Shop    5  318  snorkel      10    15
370  Coast Shop   12  213  raft         10     7
380  Coast Shop   14  417  windsurfer    1  1325
390  Del Mar       3  417  flippers     30    18
400  Del Mar       3  417  kayak         3   230
410  Del Mar       8  417  raft         40     6
420  Del Mar      11  417  raft         15     7
430  Del Mar      11  417  snorkel      10    15
440  Del Mar      11  417  flippers     20    19
450  New Waves     3  215  flippers      5    20
460  New Waves     3  215  flippers     10    20
470  New Waves     6  213  snorkel      15    15
480  New Waves     6  213  surfboard     4   735
490  New Waves     6  213  snorkel      10    15
500  Surf Mart   101  417  snorkel      20    14
510  Surf Mart   101  417  surfboard     2   740
520  Surf Mart   101  417  snorkel      12    15
530  Surf Mart   118  318  flippers     15    19
540  Surf Mart   118  318  raft         30     6
550  Surf Mart   118  318  snorkel      10    15
560  Surf Mart   127  314  flippers     25    19
570  Surf Mart   127  314  surfboard     3   740
run;

data product;
   input prodname $ 1-10 prodcost prodlist;
   format prodcost prodlist dollar.;
   cards;
flippers      16    20
jet ski     2150  2675
kayak        190   240
raft           5     7
snorkel       12    15
surfboard    615   750
windsurfer  1090  1325
run;

data customer;
   input custname $ 1-10 custnum custcity $ 22-36;
   cards;
Beach Land       16  Ocean City
Coast Shop        3  Myrtle Beach
Coast Shop        5  Myrtle Beach
Coast Shop       12  Virginia Beach
Coast Shop       14  Charleston
Del Mar           3  Folly Beach
Del Mar           8  Charleston
Del Mar          11  Charleston
New Waves         3  Ocean City
New Waves         6  Virginia Beach
Sea Sports        8  Charleston
Sea Sports       20  Virginia Beach
Surf Mart       101  Charleston
Surf Mart       118  Surfside
Surf Mart       127  Ocean Isle
Surf Mart       133  Charleston
run;

data employee;
   input empnum empname $ empyears empcity $ 20-34
   emptitle $ 36-45 empboss;
   cards;
101   Herb     28  Ocean City      president     .
201   Betty     8  Ocean City      manager     101
213   Joe       2  Virginia Beach  salesrep    201
214   Jeff      1  Virginia Beach  salesrep    201
215   Wanda    10  Ocean City      salesrep    201
216   Fred      6  Ocean City      salesrep    201
301   Sally     9  Wilmington      manager     101
314   Marvin    5  Wilmington      salesrep    301
318   Nick      1  Myrtle Beach    salesrep    301
401   Chuck    12  Charleston      manager     101
417   Sam       7  Charleston      salesrep    401
run;
