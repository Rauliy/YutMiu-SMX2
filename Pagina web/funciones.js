document.addEventListener("DOMContentLoaded", () => {

    /* ===============================
       UTILIDADES
    ================================ */
    const save = (key, value) => localStorage.setItem(key, JSON.stringify(value));
    const load = (key, def = null) =>
        localStorage.getItem(key) !== null
            ? JSON.parse(localStorage.getItem(key))
            : def;

    /* ===============================
       APLICAR TEMA GLOBAL (CLAVE)
       ESTO SE EJECUTA EN TODOS LOS HTML
    ================================ */
    const savedTheme = load("theme", "dark");

    if (savedTheme === "light") {
        document.body.classList.add("light-mode");
    } else {
        document.body.classList.remove("light-mode");
    }

    /* ===============================
       BOTÓN MODO OSCURO / CLARO
       (SOLO SI EXISTE EN LA PÁGINA)
    ================================ */
    const themeBtn = document.getElementById("theme-toggle");

    if (themeBtn) {
        themeBtn.textContent =
            document.body.classList.contains("light-mode")
                ? "Claro"
                : "Oscuro";

        themeBtn.addEventListener("click", () => {
            const isLight = document.body.classList.toggle("light-mode");
            save("theme", isLight ? "light" : "dark");
            themeBtn.textContent = isLight ? "Claro" : "Oscuro";
        });
    }

    /* ===============================
       BOTONES ACTIVAR / DESACTIVAR
    ================================ */
    document.querySelectorAll(".toggle-btn[data-setting]").forEach(btn => {
        const setting = btn.dataset.setting;
        const state = load(setting, false);

        btn.classList.toggle("active", state);
        btn.textContent = state ? "Activado" : "Desactivado";

        btn.addEventListener("click", () => {
            const active = btn.classList.toggle("active");
            btn.textContent = active ? "Activado" : "Desactivado";
            save(setting, active);
        });
    });

    /* ===============================
       FAVORITOS (❤)
    ================================ */
    document.querySelectorAll(".song-actions button").forEach((btn, i) => {
        const key = `fav_${i}`;
        const fav = load(key, false);

        btn.classList.toggle("active", fav);

        btn.addEventListener("click", () => {
            const active = btn.classList.toggle("active");
            save(key, active);
        });
    });

    /* ===============================
       BUSCADOR
    ================================ */
    const searchForm = document.querySelector(".search");
    if (searchForm) {
        searchForm.addEventListener("submit", e => {
            e.preventDefault();
            alert("Buscando: " + searchForm.querySelector("input").value);
        });
    }
/* ===============================
       APLICAR TEMA GLOBAL
    ================================ */
    const theme = load("theme", "dark");
    const body = document.body;

    if (theme === "light") {
        body.classList.add("light-mode");
    } else {
        body.classList.remove("light-mode");
    }

    /* ===============================
       BOTÓN DE IMAGEN (SI EXISTE)
    ================================ */
    const themeImg = document.getElementById("theme-toggle-img");

    if (themeImg) {
        themeImg.src =
            body.classList.contains("light-mode")
                ? "oscuro-claro.svg"
                : "oscuro-claro.svg";

        themeImg.addEventListener("click", () => {
            const isLight = body.classList.toggle("light-mode");
            save("theme", isLight ? "light" : "dark");

            themeImg.src = isLight
                ? "oscuro-claro.svg"
                : "oscuro-claro.svg";
        });
    }

});
