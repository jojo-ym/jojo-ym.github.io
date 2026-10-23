function renderContents(containerId, data) {
  const container = document.getElementById(containerId);

  // Stop if the container or data doesn't exist
  if (!container || !Array.isArray(data)) return;

  // Clear existing cards to prevent duplicates
  container.innerHTML = "";

  data.forEach(item => {
    
    let buttonIcon = item.buttonIcon ? item.buttonIcon : "globe";
    let buttonName = item.buttonName ? item.buttonName : "Visit";
    // Create the card's HTML
    container.innerHTML += `
        <div class="col-12 lg:col-6 md:col-6 sm:col-12 px-2 py-4">
            <div class="card h-100">
                <img src="${item.image}" class="card-img-top" alt="...">
             <div class="card-body">
                 <h4 class="card-title">${item.title}</h4>
                  <p class="card-text fg-secondary" style="font-size: 14px">${item.description}</p>
             </div>
             <div class="btn-wrapper d-flex flex-row px-5 pb-4">
                 ${item.viewLink ? `<a target="_blank" href="${item.viewLink}" class="btn btn-secondary btn-sm me-2"><i class="mx-1 fa fa-${buttonIcon}"></i>${buttonName}</a>` : ''}
                 ${item.docLink ? `<a target="_blank" href="${item.docLink}" class="btn btn-secondary btn-sm"><i class="mx-1 fa fa-github"></i>Documentation</a>` : ''}
                </div>
            </div>
        </div> 
        
    `;
  });
}

// Load the projects into the HTML container
renderContents("contentContainer", siteData.projects);