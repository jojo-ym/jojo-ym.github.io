let total = 0;

function loadCategories() {
    var categoriesContainer = document.getElementById("categories");

    products.forEach((product, index) => {
        categoriesContainer.innerHTML += `
          <div onclick="loadProducts('`+ index + `')" class="card shadow-sm mx-1 custom-button-categ text-center d-flex justify-content-center" style="cursor: pointer; padding: 2px; height: 50px; width: 150px; background-color: rgb(249, 246, 246); color: rgb(8,8,8)">
            <small class="categoryName" style="font-weight: 400;">`+ product.category + `</small>
          </div>
        `;
    });
}


function loadProducts(categoryIndex) {
    const productContainer = document.getElementById("productContainer");
    productContainer.innerHTML = "";
    products[categoryIndex].contents.forEach((content) => {
        productContainer.innerHTML +=`
        
              

                <div onclick="addToReceipt('` + content.price + `','` + content.code + `')" class="card rounded-3 shadow mx-1 my-2 custom-button content p-3" style="background-color: white;">
                     <img src="image/`+ content.image + `.avif" alt="" width="100%" style="border-radius: 8px;">
                    <div class="card-body">
                        <h4 class="card-title" style="font-weight: 500; padding-top: 7px; color: rgb(8,8,8)">`+ content.name + `</h4>
                        <p class="card-text" style="color: rgb(8,8,8)">PHP `+ content.price + `</p>
                    </div>
                </div>
     `;
    });
}


function addToReceipt(price, code) {
    var receiptContainer = document.getElementById("receipt");

    total = parseFloat(total) + parseFloat(price);

    var totalValueElement = document.getElementById("totalValue");
    totalValueElement.innerHTML = `PHP ${total.toFixed(2)}`;

    // Create a unique container for this receipt item
    var receiptItem = document.createElement("div");

    receiptItem.className =
        "d-flex flex-row justify-content-between px-4";

    receiptItem.innerHTML = `
        <div class="h6 receiptCode" style="color: rgb(8,8,8)">
            ${code}
        </div>

        <div class="h6 receiptPrice" style="color: rgb(8,8,8)">
            PHP ${parseFloat(price).toFixed(2)}
        </div>

        <div onclick="removeToReceipt(${parseFloat(price)}, this)"
             style="color: rgb(8,8,8); cursor: pointer;">
            <i class="bi bi-x-square"></i>
        </div>
    `;

    receiptContainer.appendChild(receiptItem);
}


function removeToReceipt(price, button) {
    // Get the specific receipt item containing the clicked X
    var receiptItem = button.parentElement;

    // Subtract its price from the total
    total = parseFloat(total) - parseFloat(price);

    // Update the displayed total
    var totalValueElement = document.getElementById("totalValue");
    totalValueElement.innerHTML = `PHP ${total.toFixed(2)}`;

    // Remove only the selected receipt item
    receiptItem.remove();
}


function removeToReceiptToReceipt(price) {
    var receiptContainer = document.getElementById("receipt");
    total = parseFloat(total) - parseFloat(price);

    totalValueElement = document.getElementById("totalValue");
    totalValueElement.innerHTML = `PHP `+total;

    receiptContainer.innerHTML += `
               
      `;
}

loadCategories();