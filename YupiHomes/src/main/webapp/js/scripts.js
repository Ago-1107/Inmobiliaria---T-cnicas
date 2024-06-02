/*!
* Start Bootstrap - Creative v7.0.7 (https://startbootstrap.com/theme/creative)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-creative/blob/master/LICENSE)
*/
//
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Navbar shrink function
    var navbarShrink = function () {
        const navbarCollapsible = document.body.querySelector('#mainNav');
        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink')
        } else {
            navbarCollapsible.classList.add('navbar-shrink')
        }

    };

    // Shrink the navbar 
    navbarShrink();

    // Shrink the navbar when page is scrolled
    document.addEventListener('scroll', navbarShrink);

    // Activate Bootstrap scrollspy on the main nav element
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            rootMargin: '0px 0px -40%',
        });
    };

    // Collapse responsive navbar when toggler is visible
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });

    // Activate SimpleLightbox plugin for housing items
    new SimpleLightbox({
        elements: '#housing a.portfolio-box'
    });
    
    // Add click event to portfolio items
    const portfolioItems = document.querySelectorAll('.portfolio-box');
    portfolioItems.forEach(item => {
        item.addEventListener('click', function(event) {
            event.preventDefault();
            document.getElementById('login').scrollIntoView({ behavior: 'smooth' });
            alert('To view property details, you must log in.');
        });
    });
});

// Función para mostrar el formulario de registro
    function showSignupForm() {
        document.getElementById("signupForm").style.display = "block";
        document.getElementById("loginForm").style.display = "none";
        document.getElementById("signupNavButton").classList.add("btn-selected");
        document.getElementById("loginNavButton").classList.remove("btn-selected");
    }

    // Función para mostrar el formulario de inicio de sesión
    function showLoginForm() {
        document.getElementById("signupForm").style.display = "none";
        document.getElementById("loginForm").style.display = "block";
        document.getElementById("loginNavButton").classList.add("btn-selected");
        document.getElementById("signupNavButton").classList.remove("btn-selected");
    }
