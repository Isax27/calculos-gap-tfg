# Funcion que imprime una tabla con el orden, IdGroup y estructura
ImprimirTablaGrupos := function(grupos)
    local g;

    Print("\n====================================================\n");
    Print(String("Grupo", -8), String("Orden", -8), String("IdGroup", -15), "Estructura\n");
    Print("====================================================\n");

    for g in grupos do
        Print(
            String(g[1], -8),
            String(Size(g[2]), -8),
            String(IdGroup(g[2]), -15),
            StructureDescription(g[2]), "\n"
        );
    od;

    Print("====================================================\n\n");
end;;


# Grupos libres
F := FreeGroup("x", "y", "z");;
x := F.1;; y := F.2;; z := F.3;;

H := FreeGroup("c", "d");;
c := H.1;; d := H.2;;


# Lista de grupos
grupos := [
    ["G_00", F / [x^2, y^2, z^2, (x*y)^2, (x*z)^3, (y*z)^3]],
    ["G_01", F / [x^2, y^2, z^2, (x*y)^2, (x*z)^3, (y*z)^4]],
    ["G_02", F / [x^2, y^2, z^2, (x*y)^2, (x*z)^3, (y*z)^5]],

    ["G_10", H / [c^2, d^3, (c*d)^3]],
    ["G_11", H / [c^2, d^4, (c*d)^3]],
    ["G_12", H / [c^2, d^5, (c*d)^3]],
    ["G_13", H / [c^2, d^3, (c*d)^4]],
    ["G_14", H / [c^2, d^3, (c*d*c*d^(-1))^2]],
    ["G_15", H / [c^2, d^3, (c*d)^5]],

    ["G_20", H / [c^3, d^3, (c*d)^2]],
    ["G_21", H / [c^3, d^4, (c*d)^2]],
    ["G_22", H / [c^3, d^5, (c*d)^2]]
];;


# Imprimimos la tabla
ImprimirTablaGrupos(grupos);
