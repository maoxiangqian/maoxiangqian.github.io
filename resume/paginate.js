function paginate() {
  const content = document.getElementById("content");
  const pagesContainer = document.getElementById("pages");
  const tempDiv = document.createElement("div");
  tempDiv.style.width = "210mm";
  tempDiv.style.height = "297mm";
  tempDiv.style.padding = "20mm";
  tempDiv.style.boxSizing = "border-box";
  tempDiv.style.position = "absolute";
  tempDiv.style.visibility = "hidden";
  document.body.appendChild(tempDiv);

  let currentPage = document.createElement("div");
  currentPage.className = "page";
  pagesContainer.appendChild(currentPage);

  [...content.childNodes].forEach(node => {
    currentPage.appendChild(node.cloneNode(true));
    if (currentPage.scrollHeight > currentPage.clientHeight) {
      // remove last node and start new page
      currentPage.removeChild(currentPage.lastChild);
      currentPage = document.createElement("div");
      currentPage.className = "page";
      pagesContainer.appendChild(currentPage);
      currentPage.appendChild(node.cloneNode(true));
    }
  });

  document.body.removeChild(tempDiv);
}
paginate();