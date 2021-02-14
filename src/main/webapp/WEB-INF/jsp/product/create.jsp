<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<h1>Create New Page</h1>
<div class="row">
   
        <div class="col-md-6">
            <form action="/product/save" method="POST">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
                </div>
                <div class="form-group">
                    <label for="code">Code:</label>
                    <input type="text" class="form-control" id="code" placeholder="Enter code" name="code">
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="text" class="form-control" id="price" placeholder="Enter price" name="price">
                </div>
                
                <button type="submit" class="btn btn-primary">Submit</button>
               
            </form>
        </div>
        
</div>





<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />