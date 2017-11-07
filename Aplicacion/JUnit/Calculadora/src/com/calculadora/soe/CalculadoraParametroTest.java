package com.calculadora.soe;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

@RunWith(value = Parameterized.class)
public class CalculadoraParametroTest {

	@Parameters
	public static Iterable<Object[]> getData() {
//		return Arrays.asList(new Object[][] { 
//			{ 3, 1, 4 }, 
//			{ 2, 3, 5 }, 
//			{ 3, 3, 6 }, 
//			{ 5, 4, 9 } 
//		});

		 List<Object[]> obj = new ArrayList<>();
		
		 obj.add(new Object[] { 3, 1, 4 });
		 obj.add(new Object[] { 2, 3, 5 });
		 obj.add(new Object[] { 3, 3, 6 });
		 obj.add(new Object[] { 5, 4, 9 });
		
		 return obj;
	}

	private int a, b, exp;

	public CalculadoraParametroTest(int a, int b, int exp) {
		this.a = a;
		this.b = b;
		this.exp = exp;
	}

	@Test
	public void testAdd() {
		Calculadora2 calc = new Calculadora2();

		int result = calc.add(a, b);
		assertEquals(exp, result);
	}

}
