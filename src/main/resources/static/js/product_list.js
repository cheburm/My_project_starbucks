const productKindView = document.querySelector('.product-kind-view');
const productKindList = document.querySelector('.product-kind-list');
const productNumberView = document.querySelector('.product-number-view');
const productNumberList = document.querySelector('.product-number-list');

productKindView.onclick = () => {
  productKindList.style.display = 'block';
}

productKindView.onblur = () => {
  productKindList.style.display = 'none';
}

productNumberView.onclick = () => {
  productNumberList.style.display = 'block';
}

productNumberView.onblur = () => {
  productNumberList.style.display = 'none';
}

const switchControl = document.querySelector('.switch-control');

switchControl.onclick = () => {
  
}