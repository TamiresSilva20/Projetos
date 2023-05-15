
    function previewImagem() {
        var preview = document.getElementById('Image1');
        var file = document.getElementById('foto').files[0];
    var reader = new FileReader();

    reader.onloadend = function () {
        preview.src = reader.result;
    preview.style.display = "block";
        }

    if (file) {
        reader.readAsDataURL(file);
        } else {
        preview.src = "";
        }
    }

