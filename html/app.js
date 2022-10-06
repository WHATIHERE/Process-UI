
window.onload = function () {
	window.addEventListener('message', (event) => {
		if (event.data.itemLabel) {
			document.getElementById('img112').src = 'nui://nc_inventory/html/img/items/' + event.data.itemLabel + '.png';
			document.getElementById('img2').src = 'nui://nc_inventory/html/img/items/' + event.data.itemgive + '.png';
			document.getElementById('showProcess').style.display = 'block';

		}
	});
	window.addEventListener('keyup', (event) => {
		if (event.keyCode == 27) {
			const el = document.getElementById('showProcess');
			el.classList.remove('quality');
			document.getElementById('showProcess').style.display = 'none';
			fetch(`https://${GetParentResourceName()}/focusOff`, {
				method: 'POST',
				headers: {
					'Content-Type': 'application/json; charset=UTF-8',
				}
			})
		}
	});
}
