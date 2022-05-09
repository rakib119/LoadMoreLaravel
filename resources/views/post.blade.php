<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Posts</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        main>.container {
            padding: 60px 15px 0;
        }

    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Fixed navbar</a>
            </div>
        </nav>
    </header>
    <main class="flex-shrink-0">
        <div class="container" id="post">
            {{-- here loads posts --}}
        </div>
        <div class="text-center m-3">
            <button class="btn btn-primary" id="load-more" data-paginate="2">Load more...</button>
            <p class="invisible">No more posts...</p>
        </div>
    </main>
    <script type="text/javascript">
        var paginate = 1;
        loadMoreData(paginate);

        $('#load-more').click(function() {
            var page = $(this).data('paginate');
            loadMoreData(page);
            $(this).data('paginate', page + 1);
        });
        // run function when user click load more button
        function loadMoreData(paginate) {
            $.ajax({
                    url: '?page=' + paginate,
                    type: 'get',
                    // datatype: 'html',
                    beforeSend: function() {
                        $('#load-more').html('Loading...');
                    }
                })
                .done(function(data) {
                    if (data.length == 0) {
                        $('.invisible').removeClass('invisible');
                        $('#load-more').hide();
                        return;
                    } else {
                        $('#load-more').text('Load more...');
                        $('#post').append(data);
                    }
                })
                .fail(function(jqXHR, ajaxOptions, thrownError) {
                    alert('Something went wrong.');
                });
        }
    </script>
</body>

</html>
