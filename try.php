<html>
<head>
<style>

</style>
</head>
<body>

         <div>
		<!--<button id="btn" name="primary" value="red" onclick="getVal(this.id)">Red</button>-->
		
		
		<form method="post" class="ques_form" onsubmit= "getVal()">
		       <input type="text" id="btnf"  name="name" >
				<input type="submit" id="btn"  name="submit" value="red">
				
				</form>
		</div>
		<script>
		
		function getVal(){
			let bt=document.getElementById('btn');
			//bt.addEventListener('click',()=>bt.style.backgroundColor='Red');
			bt.style.backgroundColor='blue';
			
		}
		
		
		
		
		
		/*function getVal(){
			let id="#"+i;
			let bt=document.querySelector(id);
			//bt.addEventListener('click',()=>bt.style.backgroundColor='Red');
			bt.style.backgroundColor='Red';
			
		}
		let input=document.getElementById('btnf');
		input.addEventListener('input',event=>{
			if(input.value==''){
			input.style.backgroundColor='Red';
			}
			else{
				input.style.backgroundColor='blue';
			}
		});
		
		let bt=document.getElementById('btn').innerHTML;
          bt.style.color='red';
			
			
		});*/
		</script>
				
</body>
</html>