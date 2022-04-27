const getButtonColorClass = () => {
  const colors = ["gree", "blue", "red"];
  const index = Math.floor(Math.random() * colors.length);

  return `button--${colors[index]}`;
}

const changeButtonClass = (buttonElemet) => {
  const colorClass = getButtonColorClass();
  const className = `button ${colorClass}`;
  buttonElement.className = className; 
}

const handleClick = (even) => {
  const buttonElement = even.target;
  changeButtonClass(buttonElement);
}

window.addEventListener('turbolinks:load', function () {
  const buttonElement = document.getElementById("click-me");
  if(buttonElement) {
    buttonElement.addEventListener("click", handleClick);
  }
})
