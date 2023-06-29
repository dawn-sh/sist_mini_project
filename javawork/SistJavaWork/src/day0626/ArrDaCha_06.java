package day0626;

public class ArrDaCha_06 {

	public static void main(String[] args) {
		
		int [][]arr;
		arr=new int[2][3]; //2행 3열로 할당(row,column)
		
		//초기값
		arr[0][0]=10;
		arr[0][1]=20;
		arr[0][2]=30;
		
		arr[1][0]=5;
		arr[1][1]=10;
		arr[1][2]=20;
		
		System.out.println("행의 갯수: "+arr.length); //행의 갯수만
		
		//열의갯수
		//행의 i번째 길이로 열의 갯수 구할 수 있음
		System.out.println("0행의 열갯수: "+arr[0].length);
		System.out.println("1행의 열갯수: "+arr[1].length);
		
		System.out.println("***데이터 출력***");
		for(int i=0;i<arr.length;i++)
		{
			//arr[i]가 행의 i번째
			for(int j=0;j<arr[i].length;j++)
			{
				//System.out.print(arr[i][j]+"\t");
				System.out.printf("%d,%d=%2d\t",i,j,arr[i][j]);
			}
			System.out.println();
		}
		
		System.out.println("2차원 배열의 값을 변경 후 다시 출력");
		
		arr[0][1]=1000;
		arr[1][0]=2000;
		arr[1][2]=3000;
		
		System.out.println("***데이터 출력***");
		for(int i=0;i<arr.length;i++)
		{
			//arr[i]가 행의 i번째
			for(int j=0;j<arr[i].length;j++)
			{
				//System.out.print(arr[i][j]+"\t");
				System.out.printf("%d,%d=%2d\t",i,j,arr[i][j]);
			}
			System.out.println();
		}

	}

}
