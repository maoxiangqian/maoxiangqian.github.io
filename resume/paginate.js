async function loadContent(url) {
  const response = await fetch(url);
  const html = await response.text();
  const parser = new DOMParser();
  const doc = parser.parseFromString(html, 'text/html');
  return doc.querySelector('div');
}

function paginateTwoColumns(leftContent, rightContent) {
  const pagesContainer = document.getElementById("pages");

  let currentPage = document.createElement("div");
  currentPage.className = "page";

  let leftCol = document.createElement("div");
  leftCol.className = "left-side";

  let rightCol = document.createElement("div");
  rightCol.className = "right-side";

  currentPage.appendChild(leftCol);
  currentPage.appendChild(rightCol);
  pagesContainer.appendChild(currentPage);

  function addNodeToColumn(node, column) {
    column.appendChild(node.cloneNode(true));
    if (column.scrollHeight > column.clientHeight) {
      column.removeChild(column.lastChild);
      currentPage = document.createElement("div");
      currentPage.className = "page";

      leftCol = document.createElement("div");
      leftCol.className = "left-side";

      rightCol = document.createElement("div");
      rightCol.className = "right-side";

      currentPage.appendChild(leftCol);
      currentPage.appendChild(rightCol);
      pagesContainer.appendChild(currentPage);

      column.appendChild(node.cloneNode(true));
    }
  }

  [...leftContent.childNodes].forEach(node => addNodeToColumn(node, leftCol));
  [...rightContent.childNodes].forEach(node => addNodeToColumn(node, rightCol));
}

// Example usage:
(async () => {
  const leftContent = await loadContent('left-side.html');
  const rightContent = await loadContent('right-side.html');
  paginateTwoColumns(leftContent, rightContent);
})();
