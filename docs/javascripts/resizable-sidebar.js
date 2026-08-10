document.addEventListener("DOMContentLoaded", function() {
    const sidebar = document.querySelector('.md-sidebar--primary');
    if (!sidebar) return;

    if (window.innerWidth < 1220) return;

    const resizer = document.createElement('div');
    resizer.className = 'sidebar-resizer';
    sidebar.appendChild(resizer);

    let startX, startWidth;

    resizer.addEventListener('mousedown', function(e) {
        startX = e.clientX;
        startWidth = sidebar.getBoundingClientRect().width;
        
        document.documentElement.style.userSelect = 'none';
        
        document.addEventListener('mousemove', doDrag);
        document.addEventListener('mouseup', stopDrag);
    });

    function doDrag(e) {
        let newWidth = startWidth + (e.clientX - startX);
        
        if (newWidth < 120) newWidth = 120;
        if (newWidth > 600) newWidth = 600;
        
        sidebar.style.width = newWidth + 'px';
        sidebar.style.minWidth = newWidth + 'px';
        sidebar.style.maxWidth = newWidth + 'px';
        sidebar.style.flexBasis = newWidth + 'px';
    }

    function stopDrag() {
        document.documentElement.style.userSelect = '';
        
        document.removeEventListener('mousemove', doDrag);
        document.removeEventListener('mouseup', stopDrag);
    }
});
