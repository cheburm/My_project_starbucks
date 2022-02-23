const bestNumText = document.querySelectorAll('.best-num-text');

window.onload = () => {
	for (let i = 0; i < bestNumText.length; i++) {
		bestNumText[i].textContent = i + 1;
	}
}