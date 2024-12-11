<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

	function registerBookForm() {
		console.log('registerBookForm() CALLED!!');
		
		let form = document.register_game_form;
		
		if (form.g_g_name.value == '') {
			alert('INPUT GAME NAME.');
			form.g_g_name.focus();
			
		} else if (form.file1.value == '') {
			alert('SELECT IMAGE FILE1');
			form.g_thumbnail1.focus();
			
		} else if (form.file2.value == '') {
			alert('SELECT IMAGE FILE2');
			form.g_thumbnail1.focus();
			
		} else if (form.file3.value == '') {
			alert('SELECT IMAGE FILE3');
			form.g_thumbnail1.focus();
			
		} else {
			form.submit();
			
		}
		
	}

</script>