define([
    'base/js/namespace',
    'base/js/events'
  ],
  function(Jupyter, events) {
    var set_parameters = function() {
        var searchParams = new URL(window.location.href).searchParams;
        var text = '';
        Jupyter.notebook.insert_cell_above();
        searchParams.forEach(function(value, key) {
            text += key + ' = ' + value + '\n';
            if (text) {
                insertCell(text,0);
            }
        });
        
        if (Jupyter.notebook.kernel && Jupyter.notebook.kernel.is_connected()) {
            console.log('notebookparams: kernel connected, autorun');
            Jupyter.notebook.execute_all_cells();
        }
        else {
            console.log('notebookparams: waiting for kernel_ready before autorun');
            events.on('kernel_ready.Kernel', function(event, data) {
            Jupyter.notebook.execute_all_cells();
            });
        }
    };
    // Run on start
    function load_ipython_extension() {
      set_parameters();
      hideCell(0);
    }
    return {
        load_ipython_extension: load_ipython_extension
    };
});


function insertCell(parameter, cellNumber){
    c = Jupyter.notebook.get_cells() // get cell
    c[cellNumber].set_text(parameter);
}

function hideCell(cellNumber){
    Jupyter.notebook.get_cell(cellNumber).element[cellNumber].style.zIndex = "-1"; 
    Jupyter.notebook.get_cell(cellNumber).element[cellNumber].style.visibility = "hidden"; 
    Jupyter.notebook.get_cell(cellNumber).element[cellNumber].style.position = "absolute";
}