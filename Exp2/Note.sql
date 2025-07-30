/**
	Types of Join

		1. Inner join :- Common data b/w the both tables
		2. Left Outer Join :- The whole left table's data (Before the the join)
		3. Right outer Join :- The whole right table's data (After the the join)
		4. Full outer Join :- Full outer join (L + R + Comman Data)
		5. Self Join
		6. Left Exclusive join :- Fetchs the rows correspond to NULL values (Like XOR same 0 and not same 1)
		7. Right Exclusive join

	Syntax of JOINS :-

		1. INNER JOIN :-

			SELECT <columns>
			FROM <Left Table>
			INNER JOIN <Right Table>
			ON <Condition>;

		2. LEFT OUTER JOIN :-

			SELECT <columns>
			FROM <Left Table>
			LEFT OUTER JOIN <Right Table>
			ON <Condition>;

		3. RIGHT OUTER JOIN :-

			SELECT <columns>
			FROM <Left Table>
			RIGHT OUTER JOIN <Right Table>
			ON <Condition>;

		4. FULL OUTER JOIN :-

			SELECT <columns>
			FROM <Left Table>
			FULL OUTER JOIN <Right Table>
			ON <Condition>;

		5. LEFT Exclusive OUTER JOIN :-

			SELECT <columns>
			FROM <Left Table>
			LEFT OUTER JOIN <Right Table>
			ON <Condition>
			WHERE <Right Table>.key = NULL;

		
		6. RIGHT Exclusive OUTER JOIN :-

			SELECT <columns>
			FROM <Left Table>
			LEFT OUTER JOIN <Right Table>
			ON <Condition>s
			WHERE <Left Table>.key = NULL;

*/