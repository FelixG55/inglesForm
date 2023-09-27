import React from 'react';
import CategoriesInDB from './CategoriesInDb';
import ContentRowSite from './ContentRowSite';
import LastProductDB from './LastProductDB';

function ContentRowTop(){
    return(
        <React.Fragment>
				{/*<!-- Content Row Top -->*/}
				<div className="container-fluid">
					<div className="d-sm-flex aligns-items-center justify-content-between mb-4">
						<h1 className="h3 mb-0 text-gray-800">App Dashboard</h1>
					</div>
				
					{/*<!-- Content Row Movies-->*/}
					<ContentRowSite />
					{/*<!-- End movies in Data Base -->*/}
				
					{/*<!-- Content Row Last Movie in Data Base -->*/}
					<div className="row">
					<LastProductDB/>
					{/*<!-- End content row last movie in Data Base -->*/}

					{/*<!-- Genres in DB -->*/}
					<CategoriesInDB/>
					{/*<!--End Genres In Db-->*/}	
					</div>	
				</div>
				{/*<!--End Content Row Top-->*/}

        </React.Fragment>
    )

}
export default ContentRowTop;