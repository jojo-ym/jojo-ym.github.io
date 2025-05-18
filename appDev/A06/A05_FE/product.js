var categories = [];
var products = [];

const getAllCategories = async () => {
    fetch(
        'http://localhost/Workspace/jojo-ym.github.io/appDev/A06/A05_BE/categories.php'
    )
        .then(response => response.json())
        .then(data => {
            categories = data;
            loadCategories();
        });
}

const getAllProducts = async (categoryID) => {
    const categoryData = {
        categoryID: categoryID
    };

    fetch(
        'http://localhost/Workspace/jojo-ym.github.io/appDev/A06/A05_BE/products.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(categoryData)
    })
        .then(response => response.json())
        .then(data => {
            products = data;
            loadProducts();
        });
}

getAllCategories();

var total = 0;

function loadCategories() {
    var categoriesContainer = document.getElementById("categories");

    categories.forEach((category) => {
        categoriesContainer.innerHTML += `
          <div onclick="getAllProducts('`+ category.categoryID + `')" class="card shadow-sm mx-1 custom-button-categ text-center d-flex justify-content-center" style="cursor: pointer; padding: 2px; height: 50px; width: 150px; background-color: rgb(249, 246, 246); color: rgb(8,8,8)">
            <small class="categoryName" style="font-weight: 400;">`+ category.name + `</small>
          </div>
        `;
    });
}



function loadProducts(categoryID) {
    const productContainer = document.getElementById("productContainer");
    productContainer.innerHTML = "";
    products.forEach(product => {
        productContainer.innerHTML +=
            `  <div onclick="addToReceipt('` + product.price + `','` + product.code + `')"
                                        class="card shadow mx-1 my-2 custom-button content p-3"
                                        style="height: 45vh; background-color: white;">
                                        <img src="image/`+ product.image + `.avif" alt="" width="100%">
                                        <small class="contentName" style="font-weight: 500; padding-top: 7px; color: rgb(8,8,8)">`+ product.name + `</small>
                                        <small class="contentPrice" style="color: rgb(8,8,8)">PHP `+ product.price + `</small>
                </div>
     `;
    });
}


function addToReceipt(price, code) {
    var receiptContainer = document.getElementById("receipt");
    total = parseFloat(total) + parseFloat(price);

    totalValueElement = document.getElementById("totalValue");
    totalValueElement.innerHTML = `PHP ` + total;

    receiptContainer.innerHTML += `
            <div class="d-flex flex-row justify-content-between px-4">
                <div class="small receiptCode" style="color: rgb(8,8,8)">`+ code + `</div>
                <div class="small receiptPrice" style="color: rgb(8,8,8)">PHP `+ price + `</div>  
            </div>      
      `;
}